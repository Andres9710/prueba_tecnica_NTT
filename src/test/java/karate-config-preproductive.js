function fn() {
    karate.configure('connectTimeout', 10000);
    karate.configure('readTimeout', 10000);

    var baseUrl = karate.properties['baseUrl'] || 'https://petstore.swagger.io/v2/'

 return {
        api: {
           baseUrl: baseUrl
        }
    };
}