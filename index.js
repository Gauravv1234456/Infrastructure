const AWS = require('aws-sdk');
const dynamodb = new AWS.DynamoDB.DocumentClient();

exports.handler = async (event) => {
    const params = {
        TableName: process.env.TABLE_NAME,
        Key: {
            id: "123"
        }
    };

    try {
        const result = await dynamodb.get(params).promise();
        console.log(result);
        return {
            statusCode: 200,
            body: JSON.stringify(result)
        };
    } catch (error) {
        console.error(error);
        return {
            statusCode: 500,
            body: JSON.stringify({ error: "Failed to process the request" })
        };
    }
};
