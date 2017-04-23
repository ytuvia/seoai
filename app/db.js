import mongo from 'mongodb'
import co from 'co';

const uri = 'mongodb://ec2-54-148-65-153.us-west-2.compute.amazonaws.com:27017/seoai';
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

export const page = (limit, last) => {
	return co(function*(){
		let db = yield MongoClient.connect(uri);
		let col = db.collection('websites');
		let filter = {};
		if(last){
			filter = {_id:{$lte: last._id}}
		}
		let cursor = yield col.find().limit(limit).sort({_id:-1});
		let docs = [];
		while(yield cursor.hasNext()){
			let doc = cursor.next();
			docs.push(doc);
		}
		db.close();
		return docs;
	})
}


