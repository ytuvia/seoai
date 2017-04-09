import AWS from 'aws-sdk'
import cheerio from 'cheerio'
import _ from 'lodash'
import selector from './selector.json'
import * as db from './db'
import winston from 'winston'

let logger = new (winston.Logger)({
  transports: [
    new (winston.transports.Console)({
      level: 'info'
    }),
    new (winston.transports.File)({
      name: 'error-file',
      filename: 'logs/error.log',
      level: 'error'
    })
  ]
});

AWS.config.update({
	region:'us-west-2'
})

let s3 = new AWS.S3({apiVersion: '2006-03-01'});

const scrapDocument = (key, doc) => {
	const $ = cheerio.load(doc);
	let scrap = {
		key: key,
		title: _.trim($(selector.title).text()),
		description: _.trim($(selector.description).text()),
		seo: {}
	}

	scrap.seo.headings = [];
	$(selector.seo.headings).each((i, heading) => {
		let level = $(heading).children().first().first().text();
		let text = $(heading).children().last().first().text();
		scrap.seo.headings.push({level: _.trim(level), text: _.trim(text)});
	});

	scrap.seo.keywordCloud = [];
	$(selector.seo.keywordCloud).each((i, keyword) => {
		let name = $(keyword).children().first().first().text();
		let occourances = $(keyword).children().last().first().text();
		scrap.seo.keywordCloud.push({name: _.trim(name), occourances: _.trim(occourances)});
	});

	return scrap;
}

const getDocument = (key) => {
	let params = {
	  Bucket: 'woorank-docs', /* required */
	  Key: key
	};
	return new Promise((resolve, reject) => {
		s3.getObject(params, (err, data) => {
			if(err){
				return reject(err);
			}else{
				return resolve(data);
			}
		})
	})
}


const pageDocuments = (marker) => {
	let params = {
	  Bucket: 'woorank-docs',
	  EncodingType: 'url',
	  Marker: marker,
	  Delimiter: ',',
	  MaxKeys: 2
	};
	return new Promise((resolve, reject) =>{
		s3.listObjects(params, (err, data) => {
		  if (err){
		  	return reject(err);
		  }
		  else{
		  	handleDocs(data.Contents);
		  	if(data.IsTruncated){
		      pageDocuments(data.NextMarker);
			}else{
				resolve('finished');
			}
		  }
		});
	});
}

async function handleDocs(docs){
	try{
		let scrapps = [];
		for(var obj of docs){
	  		let doc = await getDocument(obj.Key);
	  		let scrap = scrapDocument(obj.Key, doc.Body.toString());
	  		scrapps.push(scrap);
		};
		let result = await db.insertMany(scrapps);
		logger.info(result);
	}catch(err){
		logger.error(err);
	}
}

export async function scrap() {
	try{
		await pageDocuments();
	}catch(err){
		logger.error(err);
	}
}
