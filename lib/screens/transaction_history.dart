import 'package:expense_tracker/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: TextWidget(
              text: ('History'),
              size: 30.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          HistoryItems(item: 'Chair', amount: '-500'),
          HistoryItems(item: 'Books', amount: '+250'),
          HistoryItems(item: 'Bottles', amount: '+750'),
        ],
      ),
    );
  }
}

class HistoryItems extends StatelessWidget {
  HistoryItems({this.item, this.amount});
  final String item;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, top: 10.0, bottom: 15.0),
      child: Row(
        children: <Widget>[
          TextWidget(
            text: item,
            size: 25.0,
          ),
          SizedBox(
            width: 50.0,
          ),
          TextWidget(
            text: amount,
            size: 25.0,
          ),
        ],
      ),
    );
  }
}
