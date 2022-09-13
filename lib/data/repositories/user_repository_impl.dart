import 'package:placeholder_flutter/domain/entities/user_details.dart';
import 'package:placeholder_flutter/domain/entities/user_short.dart';

import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  @override
  Future<List<UserShort>> getAllUserList() async {
    return [];
  }

  @override
  Future<UserDetails> getUserDetails(int id) async {
    return UserDetails(
      id: 2,
      name: "Random name",
      phoneNumber: "018721945766",
      email: "random@random.org",
      profilePictureUrl:
          "https://i.pinimg.com/236x/3b/30/28/3b3028fd1f56c97194c86e414ad02997--iraqi-people-people-names.jpg",
      postCount: 21,
      followersCount: 21,
      followingCount: 21,
    );
  }
}
