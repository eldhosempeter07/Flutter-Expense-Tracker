import 'package:expense_tracker/model/transaction_data.dart';
import 'package:expense_tracker/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncomeExpense extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int incomes = 0;
    int expenses = 0;
    for (int i = 0;
        i < Provider.of<TransactionData>(context).transaction.length;
        i++) {
      if (int.parse(
              Provider.of<TransactionData>(context).transaction[i].amount) >
          0) {
        incomes += (int.parse(
                Provider.of<TransactionData>(context).transaction[i].amount))
            .abs();
      } else {
        expenses += (int.parse(
                Provider.of<TransactionData>(context).transaction[i].amount))
            .abs();
      }
    }
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 120,
              color: Colors.green.shade700,
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: TextWidget(
                            text: 'Income \$ $incomes',
                            size: 25.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.yellow.shade600,
                        child: Icon(
                          Icons.arrow_upward,
                          size: 30.0,
                          color: Colors.green.shade900,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: TextWidget(
                          text: 'Expense \$ $expenses',
                          size: 25.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Colors.yellow.shade600,
                          child: Icon(
                            Icons.arrow_downward,
                            size: 30.0,
                            color: Colors.green.shade900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
