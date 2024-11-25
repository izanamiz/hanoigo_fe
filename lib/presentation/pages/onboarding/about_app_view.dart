import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AboutAppView extends HookConsumerWidget {
  const AboutAppView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: Text("About App!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
