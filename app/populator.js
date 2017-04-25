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
			logger.info('adding website to neo', website);
			statements.push({
				statement: `CREATE (n:website { url: '${website.url}' }) RETURN n`
			})
			for(var keyword of website.keyword){
				statements.push({
					statement: `MATCH (a:website { url: '${website.url}' }), (b:keyword { name: '${keyword.name}' })
					CREATE (a)-[:uses]->(b)`
				})
			}
		}
		let result = yield neo.cypher(statements);
		logger.info(result);
		if(page.length == limit){
			last = page[page.length-1]._id;
			return populateNeo(last);
		}else{
			logger.info('done populating neo');
		}
	});
}