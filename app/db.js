import mongo from 'mongodb'

const uri = 'mongodb://ytuvia:gladiator@seoai-shard-00-00-zgun3.mongodb.net:27017,seoai-shard-00-01-zgun3.mongodb.net:27017,seoai-shard-00-02-zgun3.mongodb.net:27017/seo?ssl=true&replicaSet=seoai-shard-0&authSource=admin';
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


