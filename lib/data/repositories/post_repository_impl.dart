import 'package:placeholder_flutter/domain/entities/photo_short.dart';
import 'package:placeholder_flutter/domain/entities/post_short.dart';

import '../../domain/repositories/post_repository.dart';

class PostRepositoryImpl extends PostRepository {
  @override
  Future<List<PhotoShort>> getAllPhotosOfUser(int userId) async {
    return [];
  }

  @override
  Future<List<PostShort>> getAllPostsOfUser(int userId) async {
    return [];
  }
}
