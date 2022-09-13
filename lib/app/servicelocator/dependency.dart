import 'package:get/get.dart';
import 'package:placeholder_flutter/data/repositories/post_repository_impl.dart';
import 'package:placeholder_flutter/data/repositories/user_repository_impl.dart';
import 'package:placeholder_flutter/domain/repositories/post_repository.dart';

import '../../domain/repositories/user_repository.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut<PostRepository>(() => PostRepositoryImpl());
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl());
  }
}
