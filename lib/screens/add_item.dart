import 'package:expense_tracker/model/transaction_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

String name = '';
String amount = '';

class AddItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Text(
                'Add Transaction',
                style: TextStyle(fontSize: 30.0, color: Colors.green.shade900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                onChanged: (value) {
                  name = value;
                },
//              autofocus: true,
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter the item name',
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) {
                  amount = value;
                },
//              autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter the amount',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  Provider.of<TransactionData>(context, listen: false)
                      .addTransaction(name, amount);
                  print(name);
                  Navigator.pop(context);
                },
                color: Colors.green,
                textColor: Colors.white,
                child: Text(
                  'ADD',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
