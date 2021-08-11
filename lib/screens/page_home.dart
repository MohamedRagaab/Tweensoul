import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF35353A),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Tweensoul",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: "DancingScript"),
        ),
        actions: [
          //appBar==============================================================
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Icon(Icons.notifications),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Icon(Icons.message),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/img/me.jpg"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      //========================================================================
      body: ListView(
        children: [
          Container(
            color: Theme.of(context).accentColor,
            child: Padding(
              padding: EdgeInsets.only(
                  right: width * 0.05,
                  left: width * 0.05,
                  bottom: height * 0.01),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/img/me.jpg"),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Container(
                        height: 40,
                        width: width * 0.6,
                        child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.white)))),
                          child: Text(
                            "What's on your mind?",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Container(
                        width: width * 0.05,
                        height: height * 0.05,
                        child: Image.asset("assets/img/cool.png"),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.videocam,
                          color: Colors.red,
                        ),
                        VerticalDivider(
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.photo,
                          color: Colors.green,
                        ),
                        VerticalDivider(
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.video_call,
                          color: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //====================================================================
          Padding(
            padding: EdgeInsets.only(top: height * 0.01),
            child: Container(
              padding: EdgeInsets.only(right: 10),
              color: Theme.of(context).accentColor,
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    width: width * 0.31,
                    height: 160,
                    padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: Stack(
                      children: [
                        Container(
                          width: width * 0.31,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Image.asset(
                              "assets/img/p1.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/img/p2.jpg"),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Mohamed Ragab"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          //posts===============================================================
          ListView.builder(
            physics: ScrollPhysics(), // important---------
            shrinkWrap: true, //important----------
            itemCount: 5,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: height * 0.01),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                      ),
                      padding: EdgeInsets.only(
                        top: height * 0.01,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/img/me.jpg"),
                                    ),
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Mohamed Ragab",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "10 m .",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Icon(
                                              Icons.public,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: width * 0.02),
                                child: Icon(
                                  Icons.more_horiz,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("beautiful nature :)"),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Image.asset(
                            "assets/img/post.jpg",
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("10 likes"),
                                Row(
                                  children: [
                                    Text("30 Comments. "),
                                    Text("7 Shares"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.015),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.015),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.thumb_up),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Text("Like"),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.1,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.comment),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Text("Comment"),
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.1,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.shortcut_outlined),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Text("Share"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.015),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
