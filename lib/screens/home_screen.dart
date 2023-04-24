import 'package:flutter/material.dart';
import 'package:trade_demo/utils/style.dart';

import '../model/post.dart';
import '../service/feed_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late Future<List<Post>> _futureListOfPost;

  @override
  void initState() {
    super.initState();

    _futureListOfPost = FeedService.getFutureListOfPostFromJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text('Feed', style: kTextStyleHeaderPrimary,),
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) {
            return FutureBuilder(
              future: _futureListOfPost,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  List<Post> postList = snapshot.data;
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: postList.length,
                    itemBuilder: (context, index) {
                      return _postWidget(context: context, post: postList.elementAt(index));
                    },
                  );
                }
                return const CircularProgressIndicator();
              },
            );
          },
        ),
      )
    );
  }

  Widget _postWidget({required BuildContext context, required Post post}) {
    return SizedBox(
      height: 320,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 20.0,
            height: 20.0,
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        image: DecorationImage(
                          image: NetworkImage(post.profileImageUrl),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.username,
                            style: kTextStyleSubDetail,
                          ),
                          Text(
                            post.postCreationDate,
                            style: kTextStyleSubDetailGray,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                right: 20,
                left: 20,
              ),
              width: double.infinity,
              height: 140.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                  image: NetworkImage(post.postMediaUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.postCaption,
                  style: kTextStyleSubDetail
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            post.isLiked
                                ? (const IconData(
                              0xe902,
                              fontFamily: 'heartPost',
                            ))
                                : (const IconData(
                              0xe902,
                              fontFamily: 'heartPost',
                            )),
                            color: kSecondaryColor,
                            size: 20,
                          ),
                          iconSize: 30.0,
                          onPressed: () {

                          },
                        ),
                        Text(
                          '${post.likeCount}',
                          style: kTextStyleSubDetail
                        ),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: const Icon(
                                IconData(0xe901, fontFamily: 'commentPost')),
                            iconSize: 20.0,
                            onPressed: () {

                            }),
                        Text(
                          '${post.commentCount}',
                          style: kTextStyleSubDetail
                        ),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(IconData(0xe906, fontFamily: 'offerPost')),
                          iconSize: 20.0,
                          onPressed: () {

                          },
                        ),
                        const Text(
                          'Offer',
                          style: kTextStyleSubDetail
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    post.isLiked
                        ? (const IconData(
                      0xe908,
                      fontFamily: 'wishlistPost',
                    ))
                        : (const IconData(
                      0xe908,
                      fontFamily: 'wishlistPost',
                    )),
                    color: kSecondaryColor,
                    size: 20,
                  ),
                  iconSize: 30.0,
                  onPressed: () => {

                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
