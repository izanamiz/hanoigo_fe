import 'package:hanoigo/data/models/api_input/login_input.dart';
import 'package:hanoigo/data/models/api_input/signin_input.dart';
import 'package:hanoigo/data/models/api_output/auth_output.dart';

abstract class AuthRepository {
  Future<AuthOutput> login(LoginInput input);
  Future<void> signin(SigninInput input);
}
