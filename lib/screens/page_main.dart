import 'package:flutter/material.dart';
import 'package:socialapp/screens/page_home.dart';

class PageMain extends StatefulWidget {
  const PageMain({Key? key}) : super(key: key);

  @override
  _PageMainState createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {
  int _currentIndex = 0;
  final List<Widget> list = [
    PageHome(),
    Text("loading"),
    Text("loading"),
    Text("loading"),
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
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.groups), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.group_add), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
          ],
        ),
      ),

      //scrollView==============================================================
      body: list[_currentIndex],
    );
  }
}
