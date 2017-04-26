import rpn from 'request-promise-native'

const uri = 'http://ec2-35-167-18-73.us-west-2.compute.amazonaws.com:7474/db/data/transaction/commit'

export const cypher = (statements) => {
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