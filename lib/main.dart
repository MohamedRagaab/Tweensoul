import 'package:flutter/material.dart';
import 'screens/page_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social app',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF232935),
        accentColor: Color(0xFF232935),
      ),
      home: PageMain(),
    );
  }
}
