import 'package:placeholder_flutter/domain/entities/photo_short.dart';
import 'package:placeholder_flutter/domain/entities/post_short.dart';

abstract class PostRepository {
  Future<List<PostShort>> getAllPostsOfUser(int userId);

  Future<List<PhotoShort>> getAllPhotosOfUser(int userId);
}
