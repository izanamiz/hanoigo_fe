import 'package:hanoigo/data/models/post_entity.dart';
import 'package:hanoigo/domain/entities/post_model.dart';

class PostTranslator {
  static List<PostModel> translateAll(final List<PostEntity> entities) {
    return entities
        .map((e) => PostModel(
              userId: e.userId,
              id: e.id,
              title: e.title,
              body: e.body,
            ))
        .toList();
  }
}
