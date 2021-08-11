import 'package:flutter/material.dart';
import 'package:socialapp/screens/page_friends.dart';
import 'package:socialapp/screens/page_groups.dart';
import 'package:socialapp/screens/page_home.dart';
import 'package:socialapp/screens/page_settings.dart';

class PageMain extends StatefulWidget {
  const PageMain({Key? key}) : super(key: key);

  @override
  _PageMainState createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {
  int _currentIndex = 0;
  PageController _c = new PageController();
  @override
  void initState() {
    _c = PageController(
      initialPage: _currentIndex,
    );

    super.initState();
  }

  final List<Widget> list = [
    PageHome(),
    PageFriends(),
    PageGroup(),
    PageSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Theme.of(context).accentColor,
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.red,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: (int index) {
              this._c.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            },
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.group_add), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.groups), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
            ],
          ),
        ),

        //scrollView==============================================================
        body: PageView(
          onPageChanged: (newPage) {
            setState(() {
              this._currentIndex = newPage;
            });
          },
          controller: _c,
          children: list,
        ));
  }
}
