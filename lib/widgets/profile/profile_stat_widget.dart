import 'package:flutter/material.dart';
import 'package:trade_demo/utils/style.dart';

Widget ProfileStat() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        height: 60,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget> [
            Text(
              '57',
              style: kTextStyleDetail,
            ),
            Text(
              'Posts',
              style: kTextStyleSubDetailGray,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 60,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget> [
            Text(
              '185',
              style: kTextStyleDetail,
            ),
            Text(
              'Followers',
              style: kTextStyleSubDetailGray,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 60,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget> [
            Text(
              '241',
              style: kTextStyleDetail,
            ),
            Text(
              'Following',
              style: kTextStyleSubDetailGray,
            ),
          ],
        ),
      ),
    ],
  );
}