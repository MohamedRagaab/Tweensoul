import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  //const PostWidget({Key? key}) : super(key: key);
  final int likes;
  final int comments;
  final int shares;
  final String posterImg;
  final String profileImg;
  final String profilename;
  final String time;
  final String postText;
  PostWidget({
    required this.likes,
    required this.comments,
    required this.shares,
    required this.posterImg,
    required this.profileImg,
    required this.profilename,
    required this.time,
    required this.postText,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                            backgroundImage: AssetImage(profileImg),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                profilename,
                                style: TextStyle(fontSize: 15),
                              ),
                              Row(
                                children: [
                                  Text(
                                    time,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
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
                      Text(postText),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Image.asset(
                  posterImg,
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
                  padding: EdgeInsets.symmetric(horizontal: width * 0.015),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.015),
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
                  padding: EdgeInsets.symmetric(horizontal: width * 0.015),
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
  }
}
