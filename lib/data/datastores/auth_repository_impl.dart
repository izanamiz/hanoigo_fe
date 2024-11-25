import 'package:hanoigo/data/models/api_input/login_input.dart';
import 'package:hanoigo/data/models/api_input/signin_input.dart';
import 'package:hanoigo/data/models/api_output/auth_output.dart';
import 'package:hanoigo/data/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hanoigo/server/api_service.dart';

part 'auth_repository_impl.g.dart';

@Riverpod(keepAlive: true)
AuthRepositoryImpl authRepositoryImpl(AuthRepositoryImplRef ref) {
  return AuthRepositoryImpl(ref.watch(apiServiceProvider));
}

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<AuthOutput> login(LoginInput input) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> signin(SigninInput input) {
    // TODO: implement signin
    throw UnimplementedError();

    // return apiService.getPosts();
  }
}
