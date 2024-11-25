import 'package:hanoigo/utils/shared_prefs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_state.g.dart';

@riverpod
class OnboardingNotifier extends _$OnboardingNotifier {
  @override
  Future<bool> build() async {
    return SharedPrefs.shared.get<String>(SharedPrefKeys.authData) != null;
  }
}
