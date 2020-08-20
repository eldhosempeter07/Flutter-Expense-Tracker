import 'package:expense_tracker/screens/add_item.dart';
import 'package:expense_tracker/screens/tracker_screen.dart';
import 'package:expense_tracker/widgets/text_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TrackerScreen(),
    );
  }
}
