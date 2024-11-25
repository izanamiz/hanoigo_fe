import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_output.freezed.dart';
part 'auth_output.g.dart';

@Freezed(toJson: false)
class AuthOutput with _$AuthOutput {
  factory AuthOutput({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'token') required String token,
  }) = _AuthOutput;

  factory AuthOutput.fromJson(Map<String, dynamic> json) =>
      _$AuthOutputFromJson(json);
}
