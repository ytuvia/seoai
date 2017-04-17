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

const getScalarParam = (selector) => {
	if(selector.children().length() == 0){
		let data = _trim(selector.text());
		if(data.match(/warning/i)){
			return 'warning';
		}else{
			return data;
		}
	}else{
		
		return "missing";
	}
}

const scrapDocument = (key, doc) => {
	const $ = cheerio.load(doc);
	let scrap = {
		key: key,
		title: _.trim($(selector.title).text()),
		description: _.trim($(selector.description).text()),
		discovered: _.trim($(selector.discovered).text())
		alt: {
			missing: _.trim($(selector.alt.missing).text())
		}
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

	//related
	scrap.relatd = [];
	$(selector.relatd).each((i, website) => {
		let url = $(website).children().eq(0).first().text();
		let pages = $(website).children().eq(1).first().text();
		let backlinks = $(website).children().eq(2).first().text();
		let score = $(website).children().eq(3).first().text();
		scrap.related.push({url: _.trim(url), pags: _.trim(pages), backlinks: _.trim(backlinks), , score: _.trim(score)});
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
