import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hanoigo/data/datastores/post_repository_impl.dart';
import 'package:hanoigo/data/repositories/post_repository.dart';
import 'package:hanoigo/domain/entities/post_model.dart';
import 'package:hanoigo/domain/translator/post_translator.dart';

part 'post_usecase.g.dart';

@riverpod
PostUseCase postUseCase(PostUseCaseRef ref) {
  return PostUseCase(ref.watch(postRepositoryImplProvider));
}

class PostUseCase {
  PostUseCase(this._repository);
  final PostRepository _repository;

  Future<List<PostModel>> getPosts() async {
    final entities = await _repository.getPosts();
    return PostTranslator.translateAll(entities);
  }
}
