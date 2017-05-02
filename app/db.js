import mongo from 'mongodb'
import co from 'co';

const uri = 'mongodb://ec2-35-164-13-47.us-west-2.compute.amazonaws.com:27017/seoai';
let client = mongo.MongoClient;

export const insertMany = (docs) => {
	return new Promise((resolve, reject) => {
		client.connect(uri, (err, db) => {
			if(err){
				reject(err);
			}else{
				let collection = db.collection('websites');
				collection.insertMany(docs, (err, result) => {
					if (err) {
						reject(err);
					}else{
						db.close();
						resolve(result);
					}
				})
			}
		})
	})
}

export const insert = (doc) => {
	return new Promise((resolve, reject) => {
		client.connect(uri, (err, db) => {
			if(err){
				reject(err);
			}else{
				let collection = db.collection('websites');
				collection.insertOne(doc, (err, result) => {
					if (err) {
						reject(err);
					}else{
						resolve(result);
					}
				})
			}
			db.close();
		})
	})
}

export const page = (limit, last) => {
	return co(function*(){
		let db = yield client.connect(uri);
		let col = db.collection('websites');
		let filter = {};
		if(last){
			filter = {_id:{$lte: last._id}}
		}
		let docs = yield col.find(filter).limit(limit).sort({_id:-1}).toArray();
		db.close();
		return docs;
	})
}


