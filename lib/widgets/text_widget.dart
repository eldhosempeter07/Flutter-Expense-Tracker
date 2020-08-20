import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({this.text, this.size});
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: Colors.white,
      ),
    );
  }
}
