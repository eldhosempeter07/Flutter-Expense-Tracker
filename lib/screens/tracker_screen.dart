import 'package:expense_tracker/screens/add_item.dart';
import 'package:expense_tracker/screens/balance_screen.dart';
import 'package:expense_tracker/screens/income_expense.dart';
import 'package:expense_tracker/screens/transaction_history.dart';
import 'package:expense_tracker/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TrackerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddItem(),
              ),
            ),
          );
        },
        backgroundColor: Colors.green.shade600,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: TextWidget(
          text: 'Expense Tracker',
          size: 30.0,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Balance(),
            IncomeExpense(),
            TransactionHistory(),
          ],
        ),
      ),
      backgroundColor: Colors.green.shade900,
    );
  }
}
