import 'dart:convert';

class Post {
  final String username;
  final String profileImageUrl;
  final String postMediaUrl;
  final bool isLiked;
  final bool isSaved;
  final int likeCount;
  final String postCaption;
  final int commentCount;
  final String postCreationDate;

  Post({
    required this.username,
    required this.profileImageUrl,
    required this.postMediaUrl,
    required this.isLiked,
    required this.isSaved,
    required this.likeCount,
    required this.postCaption,
    required this.commentCount,
    required this.postCreationDate,
  });

  Post copyWith({
    required String username,
    required String profileImageUrl,
    required String postMediaUrl,
    required bool isLiked,
    required bool isSaved,
    required int likeCount,
    required String postCaption,
    required int commentCount,
    required String postCreationDate,
  }) {
    return Post(
      username: username,
      profileImageUrl: profileImageUrl,
      postMediaUrl: postMediaUrl,
      isLiked: isLiked,
      isSaved: isSaved,
      likeCount: likeCount,
      postCaption: postCaption,
      commentCount: commentCount,
      postCreationDate: postCreationDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'profileImageUrl': profileImageUrl,
      'postMediaUrl': postMediaUrl,
      'isLiked': isLiked,
      'isSaved': isSaved,
      'likeCount': likeCount,
      'postCaption': postCaption,
      'commentCount': commentCount,
      'postCreationDate': postCreationDate,
    };
  }

  static Post fromMap(Map<String, dynamic> map) {
    return Post(
      username: map['username'],
      profileImageUrl: map['profileImageUrl'],
      postMediaUrl: map['postMediaUrl'],
      isLiked: map['isLiked'],
      isSaved: map['isSaved'],
      likeCount: map['likeCount'],
      postCaption: map['postCaption'],
      commentCount: map['commentCount'],
      postCreationDate: map['postCreationDate'],
    );
  }

  String toJson() => json.encode(toMap());

  static Post fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(username: $username, profileImageUrl: $profileImageUrl, postMediaUrl: $postMediaUrl, isLiked: $isLiked, isSaved: $isSaved, likeCount: $likeCount, postCaption: $postCaption, commentCount: $commentCount, postCreationDate: $postCreationDate)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Post &&
        o.username == username &&
        o.profileImageUrl == profileImageUrl &&
        o.postMediaUrl == postMediaUrl &&
        o.isLiked == isLiked &&
        o.isSaved == isSaved &&
        o.likeCount == likeCount &&
        o.postCaption == postCaption &&
        o.commentCount == commentCount &&
        o.postCreationDate == postCreationDate;
  }

  @override
  int get hashCode {
    return username.hashCode ^
    profileImageUrl.hashCode ^
    postMediaUrl.hashCode ^
    isLiked.hashCode ^
    isSaved.hashCode ^
    likeCount.hashCode ^
    postCaption.hashCode ^
    commentCount.hashCode ^
    postCreationDate.hashCode;
  }
}
