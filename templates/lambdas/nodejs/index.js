exports.handler = async (event) => {
    console.log('Chegou um evento:', event)
    // TODO implement
    const response = {
        statusCode: 200,
        body: JSON.stringify('Hello from Lambda!'),
    };
    return response;
};
