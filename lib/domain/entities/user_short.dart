class UserShort {
  int id;
  String name;
  String phoneNumber;
  String email;
  String profilePictureUrl;

  UserShort({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.profilePictureUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'profilePictureUrl': profilePictureUrl,
    };
  }

  factory UserShort.fromJson(Map<String, dynamic> map) {
    return UserShort(
      id: map['id'] as int,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
      email: map['email'] as String,
      profilePictureUrl: map['profilePictureUrl'] as String,
    );
  }

  UserShort copyWith({
    int? id,
    String? name,
    String? phoneNumber,
    String? email,
    String? profilePictureUrl,
  }) {
    return UserShort(
      id: id ?? this.id,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
    );
  }
}
