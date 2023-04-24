import 'package:flutter/material.dart';

import '../utils/utils.dart';

Widget notificationTile({
  required BuildContext context,
  required String followerUsername,
  required String followerImageUrl,
  bool isFollowed = false,
}) {
  return ListTile(
    contentPadding: EdgeInsets.all(8),
    leading: CircleAvatar(
      radius: 25,
      backgroundImage: NetworkImage(followerImageUrl),
    ),
    title: RichText(
      text: TextSpan(children: [
        TextSpan(
          text: followerUsername,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: ' started following you.',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        TextSpan(
          text: ' 2d',
          style: TextStyle(
            color: Colors.grey[400],
          ),
        ),
      ]),
    ),
    //* Need some gesture detection over here to convert follow to following
    trailing: Container(
      width: isFollowed ? 100 : 85,
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: isFollowed
            ? Border.all(
                color: Colors.grey[500]!,
              )
            : Border.all(width: 0),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          isFollowed ? 'Following' : 'Follow',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

/// Commnet acitivity on Instagram, can be of two types.
/// It could be mention by other user.
/// Or they could like your comment.
Widget commentActivityTile({
  required bool isMention,
  required String comment,
  required String otherUsername,
  required String otherUserProfileImageUrl,
  required String commentedOnMediaUrl,
}) {
  return ListTile(
    isThreeLine: true,
    contentPadding: EdgeInsets.only(left: 10),
    leading: CircleAvatar(
      radius: 25,
      backgroundImage: NetworkImage(otherUserProfileImageUrl),
    ),
    title: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: otherUsername,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: isMention
                ? ' mentioned you in a comment:'
                : ' liked your comment:',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: isMention ? ' @imdsk' : '',
            style: TextStyle(
              color: Colors.blue[100],
            ),
          ),
          TextSpan(
            text: comment,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: ' 3d',
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.favorite_border,
            size: 12,
            color: Colors.grey[400],
          ),
          SizedBox(width: 10),
          Text(
            'Reply',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400]),
          ),
        ],
      ),
    ),
    //* Need some gesture detection over here to convert follow to following
    trailing: Container(
      margin: EdgeInsets.only(right: 10),
      width: 45,
      height: 45,
      color: Colors.pink,
      child: Image(
        image: NetworkImage(Utils.getRandomImageUrl()),
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget likedOnPost({
  required List<String> likedUsernames,
  required String postUrl,
  required List<String> likedUserImageUrls,
}) {
  return ListTile(
    contentPadding: EdgeInsets.only(left: 10),
    leading: likedUserImageUrls.length > 1
        ? Container(
            height: 50,
            width: 50,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        NetworkImage(likedUserImageUrls.elementAt(0)),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        NetworkImage(likedUserImageUrls.elementAt(1)),
                  ),
                ),
              ],
            ),
          )
        : CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(likedUserImageUrls.elementAt(0)),
          ),
    title: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "---",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' liked your post.',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: ' 3d',
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    ),
    //* Need some gesture detection over here to convert follow to following
    trailing: Container(
      margin: EdgeInsets.only(right: 10),
      width: 45,
      height: 45,
      color: Colors.pink,
      child: Image(
        image: NetworkImage(postUrl),
        fit: BoxFit.fill,
      ),
    ),
  );
}
