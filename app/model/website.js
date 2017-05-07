import * as neo from '../neo'

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
	return new Promise((resolve, reject) => {
		limit = limit || 25;
		let statement = {
			query: `MATCH (a:Website{url:'${url}'})-[r:USE_KEYWORD]-(b:Keyword)-[w:USE_KEYWORD]-(c:Website)  RETURN c.url, r.occourances, b.name  ORDER BY r.occourances DESC LIMIT ${limit}`
		}
		neo.cypher(statement).then((result) => {
			resolve(result.data);
		}).catch((err)=> {
			reject(err);
		});
	})
}