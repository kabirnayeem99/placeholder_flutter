class UserDetails {
  int id;
  String name;
  String phoneNumber;
  String email;
  String profilePictureUrl;
  int postCount;
  int followersCount;
  int followingCount;

  UserDetails({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.profilePictureUrl,
    required this.postCount,
    required this.followersCount,
    required this.followingCount,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'profilePictureUrl': profilePictureUrl,
      "postCount": postCount,
      "followersCount": followersCount,
      "followingCount": followingCount,
    };
  }

  factory UserDetails.fromJson(Map<String, dynamic> map) {
    return UserDetails(
      id: map['id'] as int,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
      email: map['email'] as String,
      profilePictureUrl: map['profilePictureUrl'] as String,
      postCount: map["postCount"] as int,
      followersCount: map["followersCount"] as int,
      followingCount: map["followingCount"] as int,
    );
  }

  UserDetails copyWith({
    int? id,
    String? name,
    String? phoneNumber,
    String? email,
    String? profilePictureUrl,
    int? postCount,
    int? followersCount,
    int? followingCount,
  }) {
    return UserDetails(
      id: id ?? this.id,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      postCount: postCount ?? this.postCount,
      followersCount: followersCount ?? this.followersCount,
      followingCount: followingCount ?? this.followingCount,
    );
  }
}
