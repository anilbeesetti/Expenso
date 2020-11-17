import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/card.dart';

class ExpenseTile extends StatelessWidget {
  final int index;

  const ExpenseTile({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Expense expense = ExpenseList.expenseList[index];
    return ListTile(
      title: Text(
        expense.expenseName,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'Date ${expense.expenseTime.day}/${expense.expenseTime.month}/${expense.expenseTime.year}',
        style: TextStyle(
          fontSize: 13,
        ),
      ),
      leading: CircleAvatar(
        backgroundColor: expense.expenseType == Expensee.add
            ? kCardSecondaryBackgroundColor
            : kCardBackgroundColor,
      ),
      trailing: Text(
        expense.expenseType == Expensee.add
            ? '+ \$${expense.expenseAmount.toStringAsFixed(2)}'
            : '- \$${expense.expenseAmount.toStringAsFixed(2)}',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
