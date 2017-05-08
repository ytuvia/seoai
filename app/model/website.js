import * as neo from '../neo'
import * as db from '../db'
import co from 'co';

export const search = (query, limit) => {
	return new Promise((resolve, reject) => {
		limit = limit || 25;
		let statement = {
			query: `MATCH (n:Website) WHERE n.url=~'.*${query}.*' RETURN n LIMIT ${limit}`
		}
		neo.cypher(statement).then((result) => {
			let websites = [];
			for(var col of result.data){
				websites.push(col[0].data)
			}
			resolve(websites);
		}).catch((err)=> {
			reject(err);
		});
	})
}

export const related = (url, limit) => {
	return co(function*(){
		limit = limit || 25;
		let statement = {
			query: `MATCH (a:Website)-[r:USE_KEYWORD]->(b:Keyword)<-[w:USE_KEYWORD]-(c:Website) 
			WHERE a.url='${url}' AND c.url <> ''
			RETURN c.url, AVG(r.occourances)*SUM(r.occourances) as occourances,COLLECT(b.name) 
			ORDER BY occourances DESC LIMIT ${limit}`
		}
		let result = yield neo.cypher(statement);
		let websites = [];
		for(var col of result.data){
			let url = col[0];
			let website = yield db.findByKey('data/woorank/'+url);

			websites.push({
				url: url,
				occourances: col[1],
				similiarKeywords: col[2],
				info: website
			})
		}
		return websites;
	})
}