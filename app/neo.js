import rpn from 'request-promise-native'

const uri = 'http://ec2-35-167-18-73.us-west-2.compute.amazonaws.com:7474/db/data/transaction/commit'
const user = 'neo4j'
const password = 'Seo1357'

export const cypher = (statements) => {
	var options = {
	    method: 'POST',
	    uri: uri,
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