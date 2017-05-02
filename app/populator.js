import * as db from './db'
import * as neo from './neo'
import co from 'co'
import logger from './logger'
import sqs from './sqs'

async function populate(){
	let envelope = await sqs.reciveMessage('woorank-keys');
	if(!envelope.Messages){
		logger.info('finished populating the queue.');
		return;
	}
	let message = envelope.Messages[0];
	let key = message.Body
	logger.info('populating', key);
	await populateNeo(website);
	await sqs.deleteMessage('woorank-keys', message.ReceiptHandle)
	return populate();
}

const populateNeo = (website) => {
	return co(function*(){
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
		yield neo.cypher(statements);
	});
}