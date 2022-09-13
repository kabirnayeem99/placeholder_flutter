class PhotoShort {
  String title;
  int id;
  String thumbnail;
  String downloadUrl;

  PhotoShort({
    required this.title,
    required this.id,
    required this.thumbnail,
    required this.downloadUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PhotoShort &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          id == other.id &&
          thumbnail == other.thumbnail &&
          downloadUrl == other.downloadUrl);

  @override
  int get hashCode =>
      title.hashCode ^ id.hashCode ^ thumbnail.hashCode ^ downloadUrl.hashCode;

  @override
  String toString() {
    return 'PhotoShort{ title: $title, id: $id, thumbnail: $thumbnail, downloadUrl: $downloadUrl,}';
  }

  PhotoShort copyWith({
    String? title,
    int? id,
    String? thumbnail,
    String? downloadUrl,
  }) {
    return PhotoShort(
      title: title ?? this.title,
      id: id ?? this.id,
      thumbnail: thumbnail ?? this.thumbnail,
      downloadUrl: downloadUrl ?? this.downloadUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'id': id,
      'thumbnail': thumbnail,
      'downloadUrl': downloadUrl,
    };
  }

  factory PhotoShort.fromMap(Map<String, dynamic> map) {
    return PhotoShort(
      title: map['title'] as String,
      id: map['id'] as int,
      thumbnail: map['thumbnail'] as String,
      downloadUrl: map['downloadUrl'] as String,
    );
  }
}
