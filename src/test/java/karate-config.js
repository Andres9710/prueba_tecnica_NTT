function fn() {
    karate.configure('connectTimeout', 50000);
    karate.configure('readTimeout', 50000);

    return {
        api: {
           baseUrl: 'https://petstore.swagger.io/v2/'
        }
    };
}