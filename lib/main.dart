import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: like_Reaction(),
    );
  }
}

class like_Reaction extends StatefulWidget {
  const like_Reaction({Key key}) : super(key: key);

  @override
  _like_ReactionState createState() => _like_ReactionState();
}

class _like_ReactionState extends State<like_Reaction> {
  bool isLiked = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 4,
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://pbs.twimg.com/profile_images/1270609275564392449/osuION5-_400x400.jp"),
                        ),
                      ),
                    ),
                  ),
                )),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width / 1.9,
              color: Colors.white24,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                child: Container(
                  color: Color(0xfff9edf9),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                        child: Text("Search"),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(83, 10, 10, 10),
                        child: Icon(
                          Icons.select_all_rounded,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 10, 10),
              child: Icon(
                Icons.message_rounded,
              ),
            )
          ],
        ),
        SizedBox(
          height: 1,
          child: Container(
            color: Colors.grey,
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
            child: Container(
              color: Color(0xffffffff),
              height: MediaQuery.of(context).size.height / 1.7,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              child: Container(
                                  decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://pbs.twimg.com/profile_images/1270609275564392449/osuION5-_400x400.jpg"),
                                ),
                              )),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Gita Khanal"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 200),
                          child: Icon(
                            Icons.edit,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.8,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/thetechgirlgita/100-Days-Of-AWS-Learning/raw/master/Images/Day1/Page1.jpg?raw=true"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height / 17,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                child: Icon(
                                  Icons.thumb_up,
                                  size: 18,
                                  color: Colors.grey,
                                )),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                              child: Text(
                                "$count",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.fromLTRB(250, 0, 5, 3),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                )),
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                child: Text(
                                  "comment",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                  ),
                  Row(children: [
                    Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height / 11.6,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(Icons.thumb_up),
                            color: isLiked ? Colors.blue : Colors.grey,
                            onPressed: () {
                              setState(() {
                                if (isLiked == true) {
                                  count--;
                                  isLiked = false;
                                } else {
                                  count++;
                                  isLiked = true;
                                }
                              });
                            },
                          ),
                          IconButton(
                              icon: Icon(Icons.comment_bank),
                              color: Colors.grey,
                              onPressed: null),
                          IconButton(
                              icon: Icon(
                                Icons.send,
                              ),
                              color: Colors.grey,
                              onPressed: null),
                          IconButton(
                              icon: Icon(
                                Icons.share,
                              ),
                              color: Colors.grey,
                              onPressed: null)
                        ],
                      ),
                    )
                  ])
                ],
              ),
            )),
        SizedBox(
            height: 4,
            child: Container(
              color: Colors.grey,
            ))
      ],
    ));
  }
}

//Picture
//https://pbs.twimg.com/profile_images/1270609275564392449/osuION5-_400x400.jpg
//https://github.com/thetechgirlgita/100-Days-Of-AWS-Learning/raw/master/Images/Day1/Page1.jpg?raw=true
