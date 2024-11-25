import 'package:dio/dio.dart';
import 'package:hanoigo/server/interceptors/request_interceptor.dart';

class AppDio {
  static Dio getInstance({BaseOptions? options}) {
    Dio dio = Dio(options ?? BaseOptions());
    dio.interceptors.add(RequestInterceptor());
    return dio;
  }
}
