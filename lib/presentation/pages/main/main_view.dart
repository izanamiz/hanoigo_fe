import 'package:flutter/material.dart';
import 'package:hanoigo/presentation/pages/login/login_view.dart';
import 'package:hanoigo/presentation/pages/onboarding/about_app_view.dart';
import 'package:hanoigo/presentation/pages/onboarding/onboarding_view.dart';
import 'package:hanoigo/presentation/pages/post/post_list_view.dart';
import 'package:hanoigo/utils/constants.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      initialRoute: PostListView.routeName,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case AppRoute.onboarding:
            return MaterialPageRoute(
              builder: (context) => const OnboardingView(),
              settings: const RouteSettings(name: AppRoute.onboarding),
            );
          case AppRoute.aboutApp:
            return MaterialPageRoute(
              builder: (context) => const AboutAppView(),
              settings: const RouteSettings(name: AppRoute.aboutApp),
            );
          case AppRoute.login:
            return MaterialPageRoute(
              builder: (context) => const LoginView(),
              settings: const RouteSettings(name: AppRoute.login),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const OnboardingView(),
              settings: const RouteSettings(name: AppRoute.onboarding),
            );
        }
      },
    );
  }
}
