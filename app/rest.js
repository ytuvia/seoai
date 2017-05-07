import express from 'express'
import bodyParser from 'body-parser'
import pkg from '../package.json'
import logger from './logger'
import * as website from './model/website'

export const listen = () => {
	let app = express();
	app.use(bodyParser.urlencoded({extended: true}));
	app.use(bodyParser.json());

	let port = process.env.PORT || 8080;

	let router = express.Router();
	router.get('/', (req, res)=>{
		res.json({message: `${pkg.name} API v ${pkg.version}`})
	})

	router.get('/search/website/:query', (req, res)=>{
		let query = req.params.query;
		website.search(query, 50).then((result) => {
			res.json(result);
		}).catch((err) => {
			res.status(500).send(err);
		})
	})

	router.get('/website/:url/related', (req, res) => {
		let url = req.params.url;
		website.related(url, 1000).then((result) => {
			res.json(result);
		}).catch((err) => {
			res.status(500).send(err);
		})
	})

	app.use('/api',router);
	app.listen(port);
	logger.info('Running REST server on port', port);
}

