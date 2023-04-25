import 'package:flutter/material.dart';

import '../utils/style.dart';
import '../widgets/profile/profile_bio_widget.dart';
import '../widgets/profile/profile_stat_widget.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProfileBio(),
                ProfileStat(),
                Container(
                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 135.0,
                        height: 35.0,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            side: const BorderSide(width: 1, color: Colors.grey),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Wishlist",
                            style: kTextStyleSubDetail.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 135.0,
                        height: 35.0,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            side: const BorderSide(width: 1, color: Colors.grey),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Edit Profile',
                            style: kTextStyleSubDetail.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.grey[500],
                ),
              ],
            ),
          )
        )
    );
  }
}
