import rpn from 'request-promise-native'

const uri = 'http://ec2-35-167-18-73.us-west-2.compute.amazonaws.com:7474/db/data'
const user = 'seoai'
const password = 'Seo1357'

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