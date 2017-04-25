import rpn from 'request-promise-native'


let options = {
	uri: 'http://ec2-35-167-18-73.us-west-2.compute.amazonaws.com/db/data/transaction/commit'
}

const export cypher = (statements) => {
	var options = {
	    method: 'POST',
	    uri: uri,
	    body: {
	        statements: statements
	    },
	    json: true
	};

	return rpn(options);
}