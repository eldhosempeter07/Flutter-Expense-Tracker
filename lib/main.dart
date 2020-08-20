import 'package:expense_tracker/model/transaction_data.dart';
import 'package:expense_tracker/screens/tracker_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransactionData(),
      child: MaterialApp(
        home: TrackerScreen(),
      ),
    );
  }
}
