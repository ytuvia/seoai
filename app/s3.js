import AWS from 'aws-sdk'

AWS.config.update({
	region:'us-west-2'
})

export const getObject = (key) => {
	return new Promise((resolve, reject) => {
		let s3 = new AWS.S3({apiVersion: '2006-03-01'});
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