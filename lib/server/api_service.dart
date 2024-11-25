import 'package:hanoigo/data/models/api_output/auth_output.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hanoigo/data/models/post_entity.dart';
import 'package:hanoigo/server/rest_client/rest_client_api.dart';

part 'api_service.g.dart';

@Riverpod(keepAlive: true)
ApiService apiService(ApiServiceRef ref) {
  return ApiService();
}

class ApiService {
  factory ApiService() => _instance;

  ApiService._internal();

  static final ApiService _instance = ApiService._internal();

  Future<List<PostEntity>> getPosts() async {
    final res = await client.getPosts();
    return res.data;
  }

  Future<AuthOutput> login() async {
    final res = await client.login();
    return res.data;
  }

  
  Future<void> signin() async {
    await client.signin();
  }
}
