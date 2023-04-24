import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../model/notification.dart';

class NotificationService {

  static Future<List<NotificationModel>> getFutureListOfNotificationFromJson() async {
    final String jsonString = await rootBundle.loadString('lib/assets/json/notification.json');
    final List<dynamic> mapObj = jsonDecode(jsonString)['notification'] as List;

    return mapObj.map((notification) => NotificationModel.fromMap(notification)).toList();
  }

}
