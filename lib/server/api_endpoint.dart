class ApiEndpoint {
  factory ApiEndpoint() => _instance;

  ApiEndpoint._internal();

  static final ApiEndpoint _instance = ApiEndpoint._internal();

  String baseURL() {
    return 'https://jsonplaceholder.typicode.com/';
  }

  static const endpoint = 'http://localhost:3002/api/v1';
  static const login = '/users/login';
  static const signin = '/users/register';
}
