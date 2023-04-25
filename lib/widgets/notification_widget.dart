import 'package:flutter/material.dart';
import 'package:trade_demo/utils/style.dart';

Widget NotificationWidget({
  required BuildContext context,
  required String username,
  required String action,
  required String profileImageUrl,
  required String tradedImageUrl,
  required String commentText,
  required bool isLike,
  required bool isFollow,
}) {
  return ListTile(
    contentPadding: const EdgeInsets.all(8),
    leading: CircleAvatar(
      radius: 25,
      backgroundImage: NetworkImage(profileImageUrl),
    ),
    title: RichText(
      text: TextSpan(children: [
        TextSpan(
          text: username,
          style: kTextStyleSubDetail.copyWith(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: getNotificationText(action, commentText),
          style: kTextStyleSubDetail,
        ),
        const TextSpan(
          text: ' x day',
          style: kTextStyleSubDetailGray,
        ),
      ]),
    ),
    trailing: getNotificationAction(action, tradedImageUrl, isFollow)
  );
}

String getNotificationText(String action, String commentText) {
  if (action == "comment") {
    return ' comment your post: $commentText';
  } else if (action == "like") {
    return ' like your post.';
  } else if (action == "follow") {
    return ' started following you.';
  } else {
    return '';
  }
}

Widget getNotificationAction(String action, String tradedImageUrl, bool isFollow) {
  if (action == "comment" || action == "like") {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 45,
      height: 45,
      color: kPrimaryColor,
      child: Image(
        image: NetworkImage(tradedImageUrl),
        fit: BoxFit.fill,
      ),
    );
  } else if (action == "follow") {
    return Container(
      width: isFollow ? 100 : 85,
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: isFollow
            ? Border.all(
          color: Colors.grey[500]!,
        )
            : Border.all(width: 0),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          isFollow ? 'Following' : 'Follow',
          style: kTextStyleSubDetail.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  } else {
    return Container();
  }
}