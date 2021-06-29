import 'package:flutter/cupertino.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: drawer_Screen(),
    );
  }
}
// ignore: unused_element
int _volume = 0;
class drawer_Screen extends StatefulWidget {
  const drawer_Screen({Key key}) : super(key: key);

  @override
  _drawer_ScreenState createState() => _drawer_ScreenState();
}

// ignore: camel_case_types
class _drawer_ScreenState extends State<drawer_Screen> {
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
                              "https://pbs.twimg.com/profile_images/1270609275564392449/osuION5-_400x400.jpg",
                            ),
                          )),
                    ),
                  ),
                ),
              ),
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
                          )
                        ]),
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
          ), // header
          SizedBox(
            height: 1,
            child: Container(
              color: Colors.grey,
            ),
          ),

          Padding(
            // content side
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
                                      "https://pbs.twimg.com/profile_images/1270609275564392449/osuION5-_400x400.jpg",
                                    ),
                                  )),
                            ),
                          ),
                        ),
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
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.8,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1270609275564392449/osuION5-_400x400.jpg",
                      ),
                    )),
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height/17,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                              child:
                            Icon(
                              Icons.thumb_up,
                              size: 15,
                              color: Colors.grey,
                            )
                            ),
                            Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 3),
                                child:Text("$_volume",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),),

                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(250, 0, 5, 3),
                              child:Text("1",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),),

                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                              child:Text("comment",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),),

                            ),



                          ],
                        ),

                      ),


                    ],

                  ),
                  SizedBox(
                      height: 1,
                      child: Container(

                        width : MediaQuery.of(context).size.width,
                        color: Colors.grey,
                      )
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height / 11.6,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            LikeButton(

                              likeBuilder: (bool like){
                                return Icon(
                                  Icons.thumb_up,
                                  color : like ? Colors.blue : Colors.grey,
                                  size:30,
                                );
                              }

                            ),
                            IconButton(
                              icon: const Icon(Icons.comment_bank),

                              color: Colors.grey,
                              onPressed: () {
                                setState(() {

                                });
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.send),

                              color: Colors.grey,
                              onPressed: () {
                                setState(() {

                                });
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.share),

                              color: Colors.grey,
                              onPressed: () {
                                setState(() {

                                });
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 4,
            child: Container(
              color: Colors.grey,
            ),
          ),

        ],
      ),
    );
  }
}

//Picture
//https://pbs.twimg.com/profile_images/1270609275564392449/osuION5-_400x400.jpg
