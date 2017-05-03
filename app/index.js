import * as crawler from './crawler';
import * as scrapper from './scrapper';
import * as populator from './populator';
import * as queue from './queue'
import logger from './logger';

let args = process.argv;
let extract = args.indexOf('extract') > -1 ? true : false;
let save = args.indexOf('save') > -1 ? true : false;
let populate = args.indexOf('populate') > -1 ? true : false;
let scrap = args.indexOf('scrap') > -1 ? true : false;
let queueCmd = false;
let doc = false;
for(var arg of args){
	let matches = arg.match(/^queue=?(.+)?/i);
	if(matches){
		queueCmd = {
			source: matches[1]
		}
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
	scrapper.scrap();
}

if(queueCmd){
	queue.create(queueCmd.source);
}

if(doc){
	scrapper.getDocument(doc).then((scrap)=>{
		logger.info(JSON.stringify(scrap));
	});
}

if(populate){
	populator.populate();
}