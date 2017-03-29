import AWS from 'aws-sdk'

AWS.config.update({
	region:'us-west-2'
})

// Create an SQS service object
let sqs = new AWS.SQS({apiVersion: '2012-11-05'});
let queueURL = "https://sqs.us-west-2.amazonaws.com/464166516095/";

export const sendMessage = (queueName, body) => {
	let params = {
	  MessageAttributes: {
	    "id": {
	      DataType: "String",
	      StringValue: body
	    }
	 },
	 MessageBody: body,
	 QueueUrl: queueURL + queueName
	};

	return new Promise((resolve, reject) => {
		sqs.sendMessage(params, (err, response) => {
		  if(err){
		  	reject(err);
		  }else{
		  	resolve(response);
		  }
		});
	})
	
}

export const reciveMessage = (queueName) => {
	let params = {
	 AttributeNames: [
	    "All"
	 ],
	 MaxNumberOfMessages: 1,
	 MessageAttributeNames: [
	    "All"
	 ],
	 QueueUrl: queueURL + queueName,
	 VisibilityTimeout: 0,
	 WaitTimeSeconds: 0
	};

	return new Promise((resolve, reject) => {
		sqs.receiveMessage(params, (err, response) => {
		  if(err){
		  	reject(err);
		  }else{
		  	resolve(response);
		  }
		});
	})
}

export const deleteMessage = (queueName, messageId) => {
	let params = {
	 QueueUrl: queueURL + queueName,
	 ReceiptHandle: messageId
	};

	return new Promise((resolve, reject) => {
		sqs.deleteMessage(params, (err, response) => {
		  if(err){
		  	reject(err);
		  }else{
		  	resolve(response);
		  }
		});
	})
}

