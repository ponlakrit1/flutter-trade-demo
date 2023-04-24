import 'package:flutter/material.dart';
import 'package:trade_demo/utils/style.dart';

class SearchTraderList extends StatefulWidget {
  String name;
  String userName;
  String imageUrl;

  SearchTraderList({Key? key,
    required this.name,
    required this.userName,
    required this.imageUrl,
  }) : super(key: key);

  @override
  _SearchTraderListState createState() => _SearchTraderListState();
}

class _SearchTraderListState extends State<SearchTraderList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(widget.imageUrl),
                    maxRadius: 30,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.name,
                            style: kTextStyleDetail,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
