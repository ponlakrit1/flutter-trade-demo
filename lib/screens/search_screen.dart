import 'package:flutter/material.dart';
import 'package:trade_demo/widgets/search_trader_list.dart';

import '../model/search_trader.dart';
import '../service/search_service.dart';
import '../utils/style.dart';
import '../widgets/search_trader_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  late Future<List<SearchTraderModel>> _futureListOfTrader;

  @override
  void initState() {
    super.initState();

    _futureListOfTrader = SearchService.getFutureListOfTradersFromJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text('Search', style: kTextStyleHeaderPrimary,),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade600,
                        size: 20,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: const EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                    ),
                  ),
                ),
                FutureBuilder(
                  future: _futureListOfTrader,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      List<SearchTraderModel> traderList = snapshot.data;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: traderList.length,
                        itemBuilder: (context, index) {
                          return SearchTraderList(
                            name: traderList[index].name,
                            userName: traderList[index].userName,
                            imageUrl: traderList[index].profileImageUrl,
                          );
                        },
                      );
                    }
                    return const CircularProgressIndicator();
                  },
                )
              ],
            ),
          ),
        )
    );
  }
}
