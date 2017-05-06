import express from 'express'
import bodyParser from 'body-parser'

let app = express();
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

let port = proccess.env.PORT || 8080;

let router = express.Router();
router.get('/', (req, res)=>{
	res.json({message: ``})
})
