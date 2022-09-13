class PostShort {
  int id;
  int userId;
  String title;

  PostShort({
    required this.id,
    required this.userId,
    required this.title,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PostShort &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          userId == other.userId &&
          title == other.title);

  @override
  int get hashCode => id.hashCode ^ userId.hashCode ^ title.hashCode;

  @override
  String toString() {
    return 'PostShort{ id: $id, userId: $userId, title: $title,}';
  }

  PostShort copyWith({
    int? id,
    int? userId,
    String? title,
  }) {
    return PostShort(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
    };
  }

  factory PostShort.fromMap(Map<String, dynamic> map) {
    return PostShort(
      id: map['id'] as int,
      userId: map['userId'] as int,
      title: map['title'] as String,
    );
  }
}
