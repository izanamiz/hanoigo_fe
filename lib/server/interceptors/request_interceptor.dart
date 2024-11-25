import 'package:dio/dio.dart';
import 'package:hanoigo/utils/shared_prefs.dart';

class RequestInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String token =
        SharedPrefs.shared.get<String>(SharedPrefKeys.authData) ?? '';

    options.headers['Content-Type'] = 'application/json';
    if (token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }
}
