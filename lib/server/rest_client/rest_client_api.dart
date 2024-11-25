import 'package:dio/dio.dart';
import 'package:hanoigo/data/models/api_output/auth_output.dart';
import 'package:hanoigo/server/app_dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:hanoigo/data/models/post_entity.dart';
import 'package:hanoigo/server/api_endpoint.dart';
import 'package:hanoigo/server/rest_client/rest_client_endpoint.dart';

part 'rest_client_api.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET(epPost)
  Future<HttpResponse<List<PostEntity>>> getPosts();

  @POST(ApiEndpoint.login)
  Future<HttpResponse<AuthOutput>> login();

  @POST(ApiEndpoint.signin)
  Future<HttpResponse> signin();
}

final client = RestClient(
  AppDio.getInstance(),
  // baseUrl: ApiEndpoint().baseURL(),
  baseUrl: ApiEndpoint.endpoint,
);
