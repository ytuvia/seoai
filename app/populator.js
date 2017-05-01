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
				statement: `MERGE (Website { url: '${website.url}' }) RETURN Website`
			})
			for(var keyword of website.keywords){
				statements.push({
					statement: `MERGE (Keyword { name: '${keyword.name}' }) RETURN Keyword`
				})
				statements.push({
					statement: `MATCH (a:Website { url: '${website.url}' }), (b:Keyword { name: '${keyword.name}' }) CREATE (a)-[:USE_KEYWORD {occourances: ${keyword.occourances}}]->(b)`
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