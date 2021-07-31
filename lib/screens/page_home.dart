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
      body: ListView(
        children: [
          Container(
            color: Theme.of(context).accentColor,
            child: Padding(
              padding: EdgeInsets.only(
                  right: width * 0.05,
                  left: width * 0.05,
                  bottom: height * 0.03),
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
                        height: height * 0.06,
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
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: height * 0.01),
            child: Container(
              color: Theme.of(context).accentColor,
              height: height * 0.18,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, index) {
                  return Row(
                    children: [
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Container(
                        width: width * 0.4,
                        padding: EdgeInsets.symmetric(vertical: height * 0.015),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Image.asset("assets/img/p1.jpg")),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          //posts====================================================================
          /*  Container(
            
            width: width,
            height: height * 0.55,
            child: */
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
