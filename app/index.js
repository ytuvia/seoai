import fs from 'fs'
import { parseString } from 'xml2js'
import http from 'http'
import https from 'https'
import zlib from 'zlib'
import AWS from 'aws-sdk'
import s3Stream from 's3-upload-stream' 
import * as sqs from './sqs'

AWS.config.update({
	region:'us-west-2'
})

const xmlToJson = (xml) => {;
	return new Promise((resolve, reject) => {
		parseString(xml, (err, result) => {
			if(err){
				reject(err);
			}else{
				resolve(result);
			}
		});
	})
}

const xmlFileToJson = (file) => {
	return new Promise((resolve, reject) => {
		fs.readFile(file, (err, xml) => {
			if(err){
				reject(err);
			}else{
				 resolve(xmlToJson(xml));
			}
		});
	})
}

const saveHttps = (url) => {
	return new Promise((resolve, reject) => {
		let matches = url.match(/^https?\:\/\/([^\/?#]+)(?:[\/?#]|$)(en\/www\/)(.+)/i);
		let dest = 'data/woorank/' + matches[3];
		let upload = s3Stream(new AWS.S3()).upload({
		  "Bucket": "woorank-docs",
		  "Key": dest
		});

		upload.on('error', function (error) {
		  reject(error);
		});

		upload.on('uploaded', function (details) {
		  resolve(details);
		});

		https.get(url, (res) => {
			res.pipe(upload);
		}).on('error', (err) => {
			reject(err);
		});
	});
}

const unzipHttp = (url) => {
	return new Promise((resolve, reject) => {
		let buffer = [];
		http.get(url, (res) => {
			var gunzip = zlib.createGunzip();            
        	res.pipe(gunzip);
        	gunzip.on('data', (data) => {
	            buffer.push(data.toString());
	        }).on("end", () => {
	            resolve(buffer.join("")); 
	        }).on("error", (err) => {
	            reject(err);
	        })
		}).on('error', (err) => {
			reject(err);
		});
	});
}

const sendSitemap = (sitemap, pos) => {
	return new Promise((resolve, reject) => {
		if(sitemap.length == pos-1){
			resolve(pos);
		}else{
			let url = sitemap[pos].loc[0];
			console.log('Adding ' + url);
			sqs.sendMessage('woorank-sitemap', url).then((response)=>{
				return sendSitemap(sitemap, pos+1);	
			})
			.catch((err)=>{
				reject(err)
			});
		}
	})
}

const createSitemapQueue = () => {
	return new Promise((resolve, reject)=>{
		xmlFileToJson('data/woorank-sitemap.xml').then((json) => {
			return sendSitemap(json.sitemapindex.sitemap, 0);
		})
	})
}

const sendUrlSet = (urlset, pos) => {
	return new Promise((resolve, reject) => {
		if(urlset.length == pos-1){
			resolve(pos);
		}else{
			let matches = urlset[pos].loc[0].match(/^https:\/\/www\.woorank\.com\/en\/www\/(.+)/i);
			if(matches){
				sqs.sendMessage('woorank-docs', matches[0]).then((result) => {
					console.log('Added doc '+ matches[0])
					return sendUrlSet(urlset, pos+1);
				}).catch((err)=>{
					reject(err)
				});
			}else{
				return sendUrlSet(urlset, pos+1);
			}
		}
	})
}

const readSitemapQueue = () => {
	return new Promise((resolve, reject) => {
		let message = null;
		sqs.reciveMessage('woorank-sitemap').then((response) => {
			if(response.Messages){
				message = response.Messages[0];
				return unzipHttp(message.Body)
			}else{
				return null;
			}
		})
		.then((xml)=>{
			if(xml){
				return xmlToJson(xml)
			}else{
				return null;
			}
		})
		.then((json)=>{
			if(json){
				return sendUrlSet(json.urlset.url, 0);
			}else{
				return null;
			}
		})
		.then((result) => {
			if(result){
				return sqs.deleteMessage('woorank-sitemap', message.ReceiptHandle);
			}else{
				return null;
			}
		}).catch((err)=>{
			throw err;
		})
	})
}

const saveDoc = (counter) => {
	return new Promise((resolve, reject) => {
		let message = null;
		sqs.reciveMessage('woorank-docs').then((response) => {
			if(response.Messages){
				message = response.Messages[0];
				console.log('saving ', message.Body);
				return saveHttps(message.Body);
			}else{
				return null;
			}
		})
		.then((result) => {
			if(result){
				return sqs.deleteMessage('woorank-docs', message.ReceiptHandle);
			}else{
				return null;
			}
		})
		.then((result) => {
			if(result){
				saveDoc(counter+1);
			}else{
				resolve()
				console.log(`finished saving ${count+1} to storage`);
			}
		})
		.catch((err)=>{
			reject(err);
		})
	});
}

createSitemapQueue()
.then(() => {
	return readSitemapQueue();
})
.then(() => {
	return saveDoc(0);
})
.catch((err)=>{
	throw err;
})