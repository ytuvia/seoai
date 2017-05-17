import mongo from 'mongodb'
import co from 'co';

const uri = `mongodb://${process.env.MONGO_USER}:${process.env.MONGO_PASSWORD}@${process.env.MONGO_SERVER}/seoai`;
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

export const update = (obj) => {
	return co(function*(){
		let db = yield client.connect(uri);
		let col = db.collection('websites');
		let doc = yield col.update({key:obj.key}, obj, {upsert:true});
		db.close();
		return doc;
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

export const findByKey = (key) => {
	return co(function*(){
		let db = yield client.connect(uri);
		let col = db.collection('websites');
		let doc = yield col.findOne({'key':key});
		db.close();
		return doc;
	})
}


