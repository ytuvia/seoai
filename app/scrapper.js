import cheerio from 'cheerio'
import _ from 'lodash'
import selector from './selector.json'
import * as db from './db'
import logger from './logger'
import * as sqs from './sqs'

const getScalarParam = (selector) => {
	if(selector.children().length == 0){
		let data = _.trim(selector.text());
		if(data.match(/warning/i)){
			return 'warning';
		}else{
			return data;
		}
	}else{
		return "missing";
	}
}

export const scrapDocument = (key, doc) => {
	const $ = cheerio.load(doc);
	let scrap = {
		key: key
	}

	//title
	scrap.title = _.trim($(selector.title).text());

	//description
	scrap.description = _.trim($(selector.description).text()),

	//discovred
	scrap.discovred = _.trim($(selector.discovered).text());

	//missing alt
	scrap.alt = {
		missing: _.trim($(selector.alt.missing).text())
	}

	//meta
	scrap.meta = getScalarParam($(selector.meta));

	//headings
	scrap.headings = [];
	$(selector.headings).each((i, heading) => {
		let level = $(heading).children().first().first().text();
		let text = $(heading).children().last().first().text();
		scrap.headings.push({level: _.trim(level), text: _.trim(text)});
	});

	//keywords
	scrap.keywords = [];
	$(selector.keywords).each((i, keyword) => {
		let name = $(keyword).children().first().first().text();
		let occourances = $(keyword).children().last().first().text();
		scrap.keywords.push({name: _.trim(name), occourances: _.trim(occourances)});
	});

	//attributes
	scrap.alt.attributs = [];
	$(selector.alt.attributs).each((i, attr) => {
		let hostname = $(attr).children().first().first().text();
		let path = $(attr).children().first().last().text();
		scrap.alt.attributs.push({hostname: _.trim(hostname), path: _.trim(path)});
	});

	//links
	scrap.links = [];
	$(selector.links).each((i, link) => {
		let anchor = $(link).children().eq(0).first().text();
		let type = $(link).children().eq(1).first().text();
		let follow = $(link).children().eq(2).first().text();
		scrap.links.push({anchor: _.trim(anchor), type: _.trim(type), follow: _.trim(follow)});
	});

	//broken links
	scrap.broken = getScalarParam($(selector.broken));

	//resolve
	scrap.resolve = getScalarParam($(selector.resolve));

	//robots
	scrap.robots = getScalarParam($(selector.robots));

	//sitemap
	scrap.sitemap = [];
	$(selector.sitemap).each((i, map) => {
		let url = $(map).children().first().text();
		scrap.sitemap.push(url);
	});

	//url_underscore
	scrap.url_underscore = getScalarParam($(selector.url_underscore));

	//blocking factors
	scrap.blocking = [];
	$(selector.blocking).each((i, block) => {
		let factor = $(block).children().first().children().eq(1).first().text();
		scrap.blocking.push(_.trim(factor));
	});

	//blog
	scrap.blog = getScalarParam($(selector.blog));
	
	//related
	scrap.related = [];
	$(selector.related).each((i, website) => {
		let url = $(website).children().eq(0).first().text();
		let pages = $(website).children().eq(1).first().text();
		let backlinks = $(website).children().eq(2).first().text();
		let score = $(website).children().eq(3).first().text();
		scrap.related.push({url: _.trim(url), pags: _.trim(pages), backlinks: _.trim(backlinks), score: _.trim(score)});
	});

	//url
	scrap.url = getScalarParam($(selector.url));

	//favicon
	scrap.favicon = getScalarParam($(selector.favicon));

	//custom404
	scrap.custom404 = null;
	$(selector.custom404).each((i, msg) => {
		if($(msg).text())
			scrap.custom404 += _.trim($(msg).text());
	});

	//pagesize
	scrap.pagesize = getScalarParam($(selector.pagesize));

	//load time
	scrap.loadtime = getScalarParam($(selector.loadtime));

	//language
	scrap.language = [];
	$(selector.language).each((i, lang) => {
		let language = $(lang).children().text();
		scrap.language.push(_.trim(language));
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
	  MaxKeys: 10
	};
	return new Promise((resolve, reject) =>{
		s3.listObjects(params, (err, data) => {
		  if (err){
		  	return reject(err);
		  }
		  else{
		  	//handleDocs(data.Contents);
		  	for(var obj of data.Contents){
		  		yeild sqs.sendMessage(obj.key)
		  	}
		  	if(data.IsTruncated){
		      pageDocuments(data.NextMarker);
			}else{
				resolve('finished');
			}
		  }
		});
	});
}

async function scrapDocuments(){
	try{
		var key = yeild sqs.reciveMessage();
		var doc = yeild s3.
	}catch(err){
		logger.error(err);
	}
}

async function handleDocs(docs){
	try{
		let scrapps = [];
		for(var obj of docs){
	  		let doc = await getDocument(obj.Key);
	  		let scrap = scrapDocument(obj.Key, doc.Body.toString());
	  		scrapps.push(scrap);
		};
		//logger.info(JSON.stringify(scrapps));
		let result = await db.insertMany(scrapps);
		logger.info(result);
	}catch(err){
		logger.error(err);
	}
}

export async function scrap() {
	try{
		await pageDocuments();
		await scrapDocuments();
	}catch(err){
		logger.error(err);
	}
}
