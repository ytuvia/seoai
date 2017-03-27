import fs from 'fs'
import { parseString } from 'xml2js'
import http from 'http'
import https from 'https'
import zlib from 'zlib'

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
		let file = fs.createWriteStream(dest);
		https.get(url, (res) => {
			res.pipe(file);
        	file.on('finish', () => {
	            file.close(resolve)
	        }).on("error", (err) => {
	            fs.unlink(dest);
	            reject(err);
	        })
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

const proccess = () =>{
	xmlFileToJson('data/woorank-sitemap.xml').then((json) => {
		for(let i=0; i<2; i++){
			let url = json.sitemapindex.sitemap[i].loc[0];
			unzipHttp(url).then((content) => {
				console.log('parssing ', url);
				xmlToJson(content).then((json)=>{
					for(let j=0; j<2; j++){
						console.log('exporting ', json.urlset.url[j]);
						let languages = json.urlset.url[j]['xhtml:link'];
						for(let k=0;k<languages.length; k++){
							if(languages[k]['$']['hreflang'] == 'en'){
								let webpage = languages[k]['$']['href'];
								saveHttps(webpage).then((res) => {
									console.log(webpage);
								})
							}
						}
					}
				}).catch((err)=>{
					throw err;
				})
			})
		}
	}).catch((err) => {
		throw(err);
	});
}

proccess();
