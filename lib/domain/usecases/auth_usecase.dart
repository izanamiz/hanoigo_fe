import 'package:hanoigo/data/models/api_input/login_input.dart';
import 'package:hanoigo/data/models/api_input/signin_input.dart';
import 'package:hanoigo/data/models/api_output/auth_output.dart';
import 'package:hanoigo/domain/entities/auth_entity.dart';
import 'package:hanoigo/domain/translator/auth_translator.dart';
import 'package:hanoigo/utils/shared_prefs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hanoigo/data/datastores/auth_repository_impl.dart';
import 'package:hanoigo/data/repositories/auth_repository.dart';

part 'auth_usecase.g.dart';

@riverpod
AuthUseCase authUseCase(AuthUseCaseRef ref) {
  return AuthUseCase(ref.watch(authRepositoryImplProvider));
}

class AuthUseCase {
  AuthUseCase(this._repository);
  final AuthRepository _repository;

  Future<AuthEntity> login(String email, String password) async {
    final loginInput = LoginInput(email: email, password: password);
    final response = await _repository.login(loginInput);
    return AuthTranslator.fromModel(response);
  }

  Future<void> signin(String name, String email, String password) async {
    final signinInput =
        SigninInput(name: name, email: email, password: password);
    await _repository.signin(signinInput);
  }
}
