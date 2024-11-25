import 'package:flutter/material.dart';
import 'package:hanoigo/utils/shared_prefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hanoigo/presentation/pages/main/main_view.dart';

Future<void> main() async {
  /// Init singleton of shared preferences
  await sharedPrefs.init();

  runApp(
    const ProviderScope(
      child: MainView(),
    ),
  );
}
