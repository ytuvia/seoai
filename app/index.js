import * as crawler from './crawler';
import * as scrapper from './scrapper';

let args = process.argv;
let extract = args.indexOf('extract') > -1 ? true : false;
let save = args.indexOf('save') > -1 ? true : false;
let scrap = false;
var marker = null;
for(var arg of args){
	let matches = arg.match(/^scrap=?(.+)?/i);
	if(matches){
		scrap = true;
		marker = matches[1];
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