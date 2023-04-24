import 'package:flutter/material.dart';

import '../utils/style.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text('Notification', style: kTextStyleHeaderPrimary,),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(IconData(0xe904, fontFamily: 'messageNav')),
                iconSize: 20.0,
                color: Colors.black,
                onPressed: () {

                },
              )
            ]
        ),
        body: SafeArea(
          child: Container()
        )
    );
  }
}
