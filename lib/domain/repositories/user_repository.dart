import 'package:placeholder_flutter/domain/entities/user_details.dart';

import '../entities/user_short.dart';

abstract class UserRepository {
  Future<List<UserShort>> getAllUserList();

  Future<UserDetails> getUserDetails(int id);
}
