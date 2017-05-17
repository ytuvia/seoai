import rpn from 'request-promise-native'

const uri = 'http://'+ process.env.NEO_SERVER +'/db/data'
const user = process.env.NEO_USER;
const password = process.env.NEO_PASSWORD;

export const commit = (statements) => {
	var options = {
	    method: 'POST',
	    uri: uri + '/transaction/commit',
	    body: {
	        statements: statements
	    },
	    json: true,
	    auth: {
	    	user: user,
		    pass: password
		}
	};

	return rpn(options);
}

export const cypher = (statement) => {
	var options = {
	    method: 'POST',
	    uri: uri + '/cypher',
	    body: statement,
	    json: true,
	    auth: {
	    	user: user,
		    pass: password
		}
	};
	return rpn(options);
}