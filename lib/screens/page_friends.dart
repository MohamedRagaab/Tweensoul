import 'package:flutter/material.dart';

class PageFriends extends StatefulWidget {
  const PageFriends({Key? key}) : super(key: key);

  @override
  _PageFriendsState createState() => _PageFriendsState();
}

class _PageFriendsState extends State<PageFriends> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Friends"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[800]),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.05)))),
                        child: Text(
                          "Suggestions",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[800]),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.05)))),
                        onPressed: () {},
                        child: Text(
                          "All Friends",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.all(width * 0.03),
                  child: Row(
                    children: [
                      Text(
                        "Friend Requests ",
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "10",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //FRIENDS AVATAR =====================================================
          ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: width,
                padding: EdgeInsets.all(width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: width * 0.1,
                      backgroundImage: AssetImage("assets/img/p2.jpg"),
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Column(
                      //feen nhayto
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // estana kkk 3azama peace
                          width: width * 0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mohamed Ragab ",
                                style: TextStyle(fontSize: width * 0.04),
                              ),
                              Text(
                                "1 d",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          //da el size elle kont btgrabo ?
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            Text(
                              "28",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              " mutual friends",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Theme.of(context).accentColor),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              width * 0.02)))),
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.05, right: width * 0.05),
                                child: Text(
                                  "Confirm",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey[800]),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              width * 0.02)))),
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.05, right: width * 0.05),
                                child: Text(
                                  "Delete",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
