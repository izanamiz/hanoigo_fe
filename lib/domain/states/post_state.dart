import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hanoigo/domain/entities/post_model.dart';
import 'package:hanoigo/domain/usecases/post_usecase.dart';

part 'post_state.g.dart';

@riverpod
class ListPostNotifier extends _$ListPostNotifier {
  @override
  AsyncValue<List<PostModel>> build() {
    return const AsyncLoading();
  }

  Future<void> getPosts() async {
    try {
      state = const AsyncLoading();

      final posts = await ref.read(postUseCaseProvider).getPosts();
      state = AsyncData(posts);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}
