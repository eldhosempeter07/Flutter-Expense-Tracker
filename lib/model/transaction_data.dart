import 'package:expense_tracker/model/transaction.dart';
import 'package:flutter/foundation.dart';

int expense = 0;
int income = 0;

class TransactionData extends ChangeNotifier {
  List<Transaction> transaction = [
    Transaction(itemName: 'Pen', amount: '20'),
    Transaction(itemName: 'Pencil', amount: '-10'),
  ];

  void addTransaction(String itemName, String amount) {
    final trans = Transaction(itemName: itemName, amount: amount);
    transaction.add(trans);
    notifyListeners();
  }

  void deleteTransaction(Transaction trans) {
    transaction.remove(trans);
    notifyListeners();
  }
}
