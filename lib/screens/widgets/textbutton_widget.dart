import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  // const TextButtonWidget({Key? key}) : super(key: key);

  final double width;
  final String name;

  TextButtonWidget({required this.width, required this.name});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
      onPressed: () {},
      child: Row(
        children: [
          Icon(Icons.groups),
          SizedBox(width: width),
          Text(name),
        ],
      ),
    );
  }
}
