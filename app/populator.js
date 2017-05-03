import * as db from './db'
import * as neo from './neo'
import co from 'co'
import logger from './logger'
import * as sqs from './sqs'

export async function populate(){
	let envelope = await sqs.reciveMessage('woorank-keys-neo');
	if(!envelope.Messages){
		logger.info('finished populating the queue.');
		return;
	}
	let message = envelope.Messages[0];
	let key = message.Body
	logger.info('populating', key);
	let website = await db.findByKey(key);
	await populateNeo(website);
	await sqs.deleteMessage('woorank-keys-neo', message.ReceiptHandle)
	return populate();
}

const populateNeo = (website) => {
	return co(function*(){
		let statements = []
		statements.push({
			statement: `MERGE (n:Website { url: '${website.url}' }) RETURN n`
		})
		for(var keyword of website.keywords){
			statements.push({
				statement: `MERGE (n:Keyword { name: '${keyword.name}' }) RETURN n`
			})
			statements.push({
				statement: `MATCH (a:Website { url: '${website.url}' }), (b:Keyword { name: '${keyword.name}' }) CREATE (a)-[:USE_KEYWORD {occourances: ${keyword.occourances}}]->(b)`
			})
		}
		yield neo.cypher(statements);
	});
}