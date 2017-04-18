import mongo from 'mongodb'

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


