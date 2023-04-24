import 'package:flutter/material.dart';

import '../utils/style.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({Key? key}) : super(key: key);

  @override
  _LikeScreenState createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {

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
              child: Text('Profile', style: kTextStyleHeaderPrimary,),
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
