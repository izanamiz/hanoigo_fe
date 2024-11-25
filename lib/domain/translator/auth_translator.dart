import 'package:hanoigo/data/models/api_output/auth_output.dart';
import 'package:hanoigo/domain/entities/auth_entity.dart';

class AuthTranslator {
  static AuthEntity fromModel(final AuthOutput output) {
    return AuthEntity(
      id: output.id,
      email: output.email,
      name: output.name,
      token: output.token,
    );
  }
}
