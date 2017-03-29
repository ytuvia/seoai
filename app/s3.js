import AWS from 'aws-sdk';

AWS.config.update({
	region: 'us-west-2',
}

let S3 = new AWS.S3({
	apiVersion: '2006-03-01',
})

const export upload = (bucket, file) =>{
	let params = {
		Bucket: 
	}
}

