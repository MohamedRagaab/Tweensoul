import 'package:flutter/material.dart';
import 'package:socialapp/screens/widgets/textbutton_widget.dart';

class PageSettings extends StatefulWidget {
  const PageSettings({Key? key}) : super(key: key);

  @override
  _PageSettingsState createState() => _PageSettingsState();
}

class _PageSettingsState extends State<PageSettings> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF232935),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: TextStyle(fontSize: 25),
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
          ),
          Padding(
            padding: EdgeInsets.only(left: height * 0.02),
            child: Row(
              children: [
                CircleAvatar(
                  radius: width * 0.06,
                  backgroundImage: AssetImage("assets/img/me.jpg"),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mohamed Ragab",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "see your profile",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Divider(color: Colors.grey),
          ),
          GestureDetector(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.red,
              ),
              title: Text("Settings & Privacy"),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Divider(color: Colors.grey),
          ),
          GestureDetector(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.bookmark,
                color: Colors.deepPurple,
              ),
              title: Text("Saved"),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Divider(color: Colors.grey),
          ),
          GestureDetector(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.group_add,
                color: Colors.cyan,
              ),
              title: Text("Friends"),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Divider(color: Colors.grey),
          ),
          GestureDetector(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.groups,
                color: Colors.lightGreen,
              ),
              title: Text("Groups"),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Divider(color: Colors.grey),
          ),
          GestureDetector(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.help_rounded,
                color: Colors.grey,
              ),
              title: Text("Help & Support"),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
            child: Divider(color: Colors.grey),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Log Out",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
