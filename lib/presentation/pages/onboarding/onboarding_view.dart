import 'package:flutter/material.dart';
import 'package:hanoigo/domain/states/onboarding_state.dart';
import 'package:hanoigo/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OnboardingView extends HookConsumerWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasTokenAsync = ref.watch(onboardingNotifierProvider);

    useEffect(() {
      hasTokenAsync.whenData((hasToken) {
        Future.delayed(const Duration(seconds: 5), () {
          if (hasToken) {
            // Navigator.of(context).pushReplacementNamed(AppRoute.aboutApp);
          } else {
            // Navigator.of(context).pushReplacementNamed(AppRoute.login);
          }
        });
      });
      return;
    }, [hasTokenAsync]);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(CustomColors.primary),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                ImagePath.backgroundPattern,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              ImagePath.logo,
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
