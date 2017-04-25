import * as crawler from './crawler';
import * as scrapper from './scrapper';
import * as populator from './populator';
import * as s3 from './s3'
import logger from './logger';

async function scrapDocument(key){
	try{
		let doc = false; 
		try{
			doc = await s3.getObject(key);
		}catch(err){
			//nada
		}
		if(!doc){
			await crawler.saveHttps('https://www.woorank.com/en/www/'+key);
			doc = await s3.getObject(key);
		}
		let scrap = scrapper.scrapDocument(doc.Key, doc.Body.toString());
		return scrap;
	}catch(err){
		logger.error(err);
	}
}

let args = process.argv;
let extract = args.indexOf('extract') > -1 ? true : false;
let save = args.indexOf('save') > -1 ? true : false;
let populate = args.indexOf('populate') > -1 ? true : false;
let scrap = false;
var marker = null;
let doc = false;
for(var arg of args){
	let matches = arg.match(/^scrap=?(.+)?/i);
	if(matches){
		scrap = true;
		marker = matches[1];
	}
	matches = arg.match(/^doc=?(.+)?/i);
	if(matches){
		doc = matches[1];
	}
}

if(extract){
	crawler.extractSitemap();
}

if(save){
	crawler.saveDoc(0);
}

if(scrap){
	scrapper.scrap(marker);
}

if(doc){
	scrapDocument(doc).then((scrap)=>{
		logger.info(JSON.stringify(scrap));
	});
}

if(populate){
	populator.populateNeo();
}