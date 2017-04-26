import * as db from './db'
import * as neo from './neo'
import co from 'co'
import logger from './logger'

export const populateNeo = (last) => {
	const limit = 10;
	co(function*(){
		let page = yield db.page(limit, last);
		let statements = [];
		for(var website of page){
			statements.push({
				statement: `CREATE (n:website { url: '${website.url}' }) RETURN n`
			})
			for(var keyword of website.keywords){
				statements.push({
					statement: `CREATE (n:keyword { name: '${keyword.name}' }) RETURN n`
				})
				statements.push({
					statement: `MATCH (a:website { url: '${website.url}' }), (b:keyword { name: '${keyword.name}' }) CREATE (a)-[:uses]->(b)`
				})
			}
		}
		let result = yield neo.cypher(statements);
		logger.info('Added ', limit, ' more websites');
		if(page.length == limit){
			last = page[page.length-1];
			return populateNeo(last);
		}else{
			logger.info('done populating neo');
		}
	});
}