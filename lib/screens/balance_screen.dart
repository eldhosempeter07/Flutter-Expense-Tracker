import 'package:expense_tracker/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 120,
              color: Colors.green.shade700,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.yellow.shade600,
                      child: Icon(
                        Icons.monetization_on,
                        size: 50.0,
                        color: Colors.green.shade900,
                      ),
                    ),
                  ),
                  Center(
                    child: TextWidget(
                      text: 'Your Balance 500.0',
                      size: 35.0,
                    ),
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
