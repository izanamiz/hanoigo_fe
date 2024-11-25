import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hanoigo/data/models/post_entity.dart';
import 'package:hanoigo/data/repositories/post_repository.dart';
import 'package:hanoigo/server/api_service.dart';

part 'post_repository_impl.g.dart';

@Riverpod(keepAlive: true)
PostRepositoryImpl postRepositoryImpl(PostRepositoryImplRef ref) {
  return PostRepositoryImpl(ref.watch(apiServiceProvider));
}

class PostRepositoryImpl extends PostRepository {
  PostRepositoryImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<List<PostEntity>> getPosts() {
    return apiService.getPosts();
  }
}
