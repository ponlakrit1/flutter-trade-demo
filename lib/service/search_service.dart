import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../model/search_trader.dart';

class SearchService {

  static Future<List<SearchTraderModel>> getFutureListOfTradersFromJson() async {
    final String jsonString = await rootBundle.loadString('lib/assets/json/traders.json');
    final List<dynamic> mapObj = jsonDecode(jsonString)['traders'] as List;

    return mapObj.map((traders) => SearchTraderModel.fromMap(traders)).toList();
  }

}
