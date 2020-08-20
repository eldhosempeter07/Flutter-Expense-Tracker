import 'package:expense_tracker/model/transaction.dart';
import 'package:flutter/foundation.dart';

int expense = 0;
int income = 0;

class TransactionData extends ChangeNotifier {
  List<Transaction> transaction = [
    Transaction(itemName: 'Pen', amount: '+20'),
    Transaction(itemName: 'Pencil', amount: '-10'),
  ];

  int getExpense() {
    for (int i = 0; i < transaction.length; i++)
      if (int.parse(transaction[i].amount) < 0) {
        expense += (int.parse(transaction[i].amount)).abs();
      }
    return expense;
  }

  int getIncome() {
    for (int i = 0; i < transaction.length; i++)
      if (int.parse(transaction[i].amount) > 0) {
        income += (int.parse(transaction[i].amount)).abs();
      }
    return income;
  }

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
