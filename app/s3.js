import AWS from 'aws-sdk'

AWS.config.update({
	region:'us-west-2'
})

let s3 = new AWS.S3({apiVersion: '2006-03-01'});

export const getObject = (bucket, key) => {
	return new Promise((resolve, reject) => {
		let params = {
		  Bucket: bucket,
		  Key: 'data/woorank/' + key
		};
		s3.getObject(params, (err, data) => {
		  if (err) {
		  	reject(err);
		  }
		  else{
		  	resolve(data);
		  }
		});
	})
}

export const listObjects =(backet, marker, limit) => {
	return new Promise((resolve, reject) => {
		let params = {
		  Bucket: bucket,
		  EncodingType: 'url',
		  Marker: marker,
		  Delimiter: ',',
		  MaxKeys: limit || 10
		};
		s3.listObjects(params, (err, data) => {
			  if (err){
			  	return reject(err);
			  }else{
				resolve(data);
			  }
		});
	});
}
