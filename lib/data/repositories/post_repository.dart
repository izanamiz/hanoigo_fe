import 'package:hanoigo/data/models/post_entity.dart';

abstract class PostRepository {
  Future<List<PostEntity>> getPosts();
}
