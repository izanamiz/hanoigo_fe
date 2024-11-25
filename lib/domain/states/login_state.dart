import 'package:hanoigo/domain/entities/auth_entity.dart';
import 'package:hanoigo/domain/usecases/auth_usecase.dart';
import 'package:hanoigo/utils/shared_prefs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_state.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  Future<AuthEntity?> build() async {
    return null;
  }

  Future<AuthEntity> login(String email, String password) async {
    final useCase = ref.read(authUseCaseProvider);
    final auth = await useCase.login(email, password);
    await SharedPrefs.shared.save(SharedPrefKeys.authData, auth.token);
    return auth;
  }
}
