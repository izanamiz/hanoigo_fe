import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_input.freezed.dart';
part 'login_input.g.dart';

@freezed
class LoginInput with _$LoginInput {
  factory LoginInput({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
  }) = _LoginInput;

  factory LoginInput.fromJson(Map<String, dynamic> json) =>
      _$LoginInputFromJson(json);
}
