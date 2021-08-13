import 'package:flutter/material.dart';
import 'package:socialapp/screens/widgets/post_widget.dart';
import 'package:socialapp/screens/widgets/textbutton_widget.dart';

class PageGroup extends StatelessWidget {
  const PageGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Color(0xFF232935),
      appBar: AppBar(
        elevation: 0,
        title: Text("Groups"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 1, top: 10, bottom: 10),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                  shape: MaterialStateProperty.all(CircleBorder())),
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 1, top: 10, bottom: 10),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                  shape: MaterialStateProperty.all(CircleBorder())),
              onPressed: () {},
              child: Icon(Icons.settings),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 1, top: 10, bottom: 10),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                  shape: MaterialStateProperty.all(CircleBorder())),
              onPressed: () {},
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),

      body: ListView(
        children: [
          Container(
            color: Color(0xFF232935),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                TextButtonWidget(width: width * 0.01, name: "Your Groups"),
                SizedBox(
                  width: width * 0.02,
                ),
                TextButtonWidget(width: width * 0.01, name: "Invitations"),
              ],
            ),
          ),
          Container(
            height: 150,
            color: Color(0xFF232935),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        "assets/img/p6.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return PostWidget(
                    likes: 20,
                    comments: 30,
                    shares: 12,
                    posterImg: "assets/img/p3.jpg",
                    profileImg: "assets/img/me.jpg",
                    profilename: "Mohamed Ragab",
                    time: "10 m",
                    postText: "beautiful group :)",
                  );
                }),
          ),
        ],
      ),
    );
  }
}
