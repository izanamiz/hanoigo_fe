import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hanoigo/domain/states/post_state.dart';
import 'package:hanoigo/presentation/pages/post/post_detail_view.dart';

class PostListView extends StatelessWidget {
  const PostListView({super.key});

  static const routeName = "/postList";

  @override
  Widget build(BuildContext context) {
    return _BuildPage();
  }
}

class _BuildPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listPostState = ref.watch(listPostNotifierProvider);
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          await ref.read(listPostNotifierProvider.notifier).getPosts();
        });
        return;
      },
      [],
    );
    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: listPostState.when(
        data: (posts) => ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return ListTile(
                title: Text('Post $index'),
                subtitle: Text(post.title),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    PostDetailView.routeName,
                    arguments: PostDetailArguments(
                      title: 'Post $index',
                      body: post.title,
                    ),
                  );
                },
              );
            }),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
