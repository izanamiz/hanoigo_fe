import 'package:flutter/material.dart';

class PostDetailView extends StatelessWidget {
  static const routeName = '/postDetail';

  final String title;
  final String body;

  const PostDetailView({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(body),
      ),
    );
  }
}

class PostDetailArguments {
  final String title;
  final String body;

  PostDetailArguments({required this.title, required this.body});
}
