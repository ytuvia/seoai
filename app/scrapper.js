import AWS from 'aws-sdk'

AWS.config.update({
	region:'us-west-2'
})

let s3 = new AWS.S3({apiVersion: '2006-03-01'});

export const getDocument = () => {
	let params = {
	  Bucket: 'woorank-docs', /* required */
	  //Delimiter: ',',
	  EncodingType: 'url',
	  //Marker: 'STRING_VALUE',
	  MaxKeys: 0,
	  //Prefix: 'STRING_VALUE',
	  //RequestPayer: requester
	};
	s3.listObjects(params, function(err, data) {
	  if (err) console.log(err, err.stack); // an error occurred
	  else     console.log(data);           // successful response
	});
}