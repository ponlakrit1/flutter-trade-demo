import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../model/post.dart';

class FeedService {

  static Future<List<Post>> getFutureListOfPostFromJson() async {
    final String jsonString = await rootBundle.loadString('lib/assets/json/posts.json');
    final List<dynamic> mapObj = jsonDecode(jsonString)['posts'] as List;

    return mapObj.map((post) => Post.fromMap(post)).toList();
  }

}
