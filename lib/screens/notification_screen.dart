import 'package:flutter/material.dart';
import 'package:trade_demo/widgets/notification_widget.dart';

import '../model/notification.dart';
import '../service/notification_service.dart';
import '../utils/style.dart';
import '../utils/utils.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  late Future<List<NotificationModel>> _futureListOfNotification;

  @override
  void initState() {
    super.initState();

    _futureListOfNotification = NotificationService.getFutureListOfNotificationFromJson();
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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const ListTile(
                    leading: Text('This Week',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16))),
                FutureBuilder(
                  future: _futureListOfNotification,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      List<NotificationModel> notificationList = snapshot.data;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: notificationList.length,
                        itemBuilder: (context, index) {
                          return NotificationWidget(
                              context: context,
                              username: notificationList[index].username,
                              action: notificationList[index].action,
                              profileImageUrl: notificationList[index].profileImageUrl,
                              tradedImageUrl: notificationList[index].tradedImageUrl,
                              commentText: notificationList[index].commentText,
                              isLike: notificationList[index].isLike,
                              isFollow: notificationList[index].isFollow
                          );
                        },
                      );
                    }
                    return const CircularProgressIndicator();
                  },
                ),
                Divider(color: Colors.grey[500]),
                const ListTile(
                    leading: Text('This Month',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16))),
                FutureBuilder(
                  future: _futureListOfNotification,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      List<NotificationModel> notificationList = snapshot.data;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: notificationList.length,
                        itemBuilder: (context, index) {
                          return NotificationWidget(
                              context: context,
                              username: notificationList[index].username,
                              action: notificationList[index].action,
                              profileImageUrl: notificationList[index].profileImageUrl,
                              tradedImageUrl: notificationList[index].tradedImageUrl,
                              commentText: notificationList[index].commentText,
                              isLike: notificationList[index].isLike,
                              isFollow: notificationList[index].isFollow
                          );
                        },
                      );
                    }
                    return const CircularProgressIndicator();
                  },
                ),
              ],
            )
          ),
        )
    );
  }
}
