import 'package:flutter/material.dart';

import '../../utils/style.dart';

Widget ProfileBio() {
  return Container(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Wrap(
                      children: <Widget>[
                        const Text(
                          'Name',
                          style: kTextStyleDetail,
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                style: kTextStyleSubDetailGray,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Center(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: const Color(0xff7c94b6),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    'https://raw.githubusercontent.com/ponlakrit1/flutter-trade-demo/main/lib/assets/images/post/post-05.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}