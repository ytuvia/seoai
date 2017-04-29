import AWS from 'aws-sdk'

AWS.config.update({
	region:'us-west-2'
})

let s3 = new AWS.S3({apiVersion: '2006-03-01'});

export const getObject = (key) => {
	return new Promise((resolve, reject) => {
		let params = {
		  Bucket: 'woorank-docs',
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

export const listObjects(marker){
	let params = {
	  Bucket: 'woorank-docs',
	  EncodingType: 'url',
	  Marker: marker,
	  Delimiter: ',',
	  MaxKeys: 10
	};
	s3.listObjects(params, (err, data) => {
		  if (err){
		  	return reject(err);
		  }
		  else{
		  	//handleDocs(data.Contents);
		  	for(var obj of data.Contents){
		  		yeild sqs.sendMessage(obj.key)
		  	}
		  	if(data.IsTruncated){
		      pageDocuments(data.NextMarker);
			}else{
				resolve('finished');
			}
		  }
	});
}

