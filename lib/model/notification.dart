import 'dart:convert';

class NotificationModel {
  final String username;
  final String action;
  final String profileImageUrl;
  final String tradedImageUrl;
  final String commentText;
  final bool isLike;
  final bool isFollow;

  NotificationModel({
    required this.username,
    required this.action,
    required this.profileImageUrl,
    required this.tradedImageUrl,
    required this.commentText,
    required this.isLike,
    required this.isFollow,
  });

  NotificationModel copyWith({
    required String username,
    required String action,
    required String profileImageUrl,
    required String tradedImageUrl,
    required String commentText,
    required bool isLike,
    required bool isFollow,
  }) {
    return NotificationModel(
      username: username,
      action: action,
      profileImageUrl: profileImageUrl,
      tradedImageUrl: tradedImageUrl,
      commentText: commentText,
      isLike: isLike,
      isFollow: isFollow,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'action': action,
      'profileImageUrl': profileImageUrl,
      'tradedImageUrl': tradedImageUrl,
      'commentText': commentText,
      'isLike': isLike,
      'isFollow': isFollow,
    };
  }

  static NotificationModel fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      username: map['username'],
      action: map['action'],
      profileImageUrl: map['profileImageUrl'],
      tradedImageUrl: map['tradedImageUrl'],
      commentText: map['commentText'],
      isLike: map['isLike'],
      isFollow: map['isFollow'],
    );
  }

  String toJson() => json.encode(toMap());

  static NotificationModel fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(username: $username, action: $action, profileImageUrl: $profileImageUrl, tradedImageUrl: $tradedImageUrl, commentText: $commentText, isLike: $isLike, isFollow: $isFollow)';
  }

  @override
  bool operator == (Object o) {
    if (identical(this, o)) return true;

    return o is NotificationModel &&
        o.username == username &&
        o.action == action &&
        o.profileImageUrl == profileImageUrl &&
        o.tradedImageUrl == tradedImageUrl &&
        o.commentText == commentText &&
        o.isLike == isLike &&
        o.isFollow == isFollow;
  }

  @override
  int get hashCode {
    return username.hashCode ^
    action.hashCode ^
    profileImageUrl.hashCode ^
    tradedImageUrl.hashCode ^
    commentText.hashCode ^
    isLike.hashCode ^
    isFollow.hashCode;
  }
}
