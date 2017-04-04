import * as crawler from './crawler';

let args = process.argv;
let extract = args.indexOf('extract') > -1 ? true : false;
let save = args.indexOf('save') > -1 ? true : false;

if(extract){
	crawler.extractSitemap();
}

if(save){
	crawler.saveDoc(0);
}