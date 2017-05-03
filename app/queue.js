import * as sqs from './sqs'
import * as s3 from './s3'
import * as db from './db'
import logger from './logger'
import co from 'co'

export const create = (source) => {
	switch(source){
		case 'mongo':
			pageMongoDocuments();
			break;
		case 's3':
		default:
			pageS3Documents();
			break;
	}
}

async function pageS3Documents(marker){
	try{
		let data = await s3.listObjects('woorank-docs', marker, 10);
		for(var obj of data.Contents){
			logger.info('adding website ', obj.Key, ' to queue');
	  		await sqs.sendMessage('woorank-keys', obj.Key);
	  	}
	  	if(data.IsTruncated){
	      pageS3Documents(data.NextMarker);
		}else{
			logger.info('Finished queueing');
			return
		}
	}catch(err){
		throw err
	}
}

export const pageMongoDocuments = (last) => {
	const limit = 10;
	co(function*(){
		let page = yield db.page(limit, last);
		let statements = [];
		for(var website of page){
			logger.info('Adding ', website.key, ' to queue');
			yield sqs.sendMessage('woorank-keys-neo', website.key);
		}
		if(page.length == limit){
			last = page[page.length-1];
			return pageMongoDocuments(last);
		}else{
			logger.info('Finished queueing');
			return;
		}
	});
}