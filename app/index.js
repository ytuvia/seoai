import * as crawler from './crawler';
import * as scrapper from './scrapper';

let args = process.argv;
let extract = args.indexOf('extract') > -1 ? true : false;
let save = args.indexOf('save') > -1 ? true : false;
let scrap = args.indexOf('scrap') > -1 ? true : false;

if(extract){
	crawler.extractSitemap();
}

if(save){
	crawler.saveDoc(0);
}

if(scrap){
	scrapper.scrap();
}