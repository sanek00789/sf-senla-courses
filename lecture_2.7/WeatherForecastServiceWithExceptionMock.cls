@IsTest
global class WeatherForecastServiceWithExceptionMock implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest request) {        
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"Data":[{"datetime":"2021-05-12", "temp":7.8}] }');
        response.setStatusCode(300);
        return response; 
    }
}