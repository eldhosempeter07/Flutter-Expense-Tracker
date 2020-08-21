import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/model/transaction_data.dart';
import 'package:expense_tracker/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TransactionHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade900,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey.shade800,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: TextWidget(
                    text: ('History'),
                    size: 40.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: TextWidget(
                    text:
                        ('${Provider.of<TransactionData>(context).transaction.length} Transactions'),
                    size: 30.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Consumer<TransactionData>(
                  builder: (context, transactionData, child) {
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final transaction = transactionData.transaction[index];
                        return ListTile(
                          title: HistoryItems(
                            item: transactionData.transaction[index].itemName,
                            amount: int.parse(transactionData
                                        .transaction[index].amount) >
                                    0
                                ? '+${transactionData.transaction[index].amount}'
                                : transactionData.transaction[index].amount,
                          ),
                          trailing: FlatButton(
                            child: Icon(
                              Icons.delete,
                              size: 30.0,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              Provider.of<TransactionData>(context,
                                      listen: false)
                                  .deleteTransaction(transaction);
                            },
                          ),
                        );
                      },
                      itemCount: transactionData.transaction.length,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
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
    return Row(
      children: <Widget>[
        Expanded(
          child: ListTile(
            title: Text(
              item,
              style: kHistoryTextStyle,
            ),
            trailing: Text(
              amount,
              style: kHistoryTextStyle,
            ),
          ),
        )
      ],
    );
  }
}
