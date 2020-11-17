import 'package:flutter/foundation.dart';

class Card {
  final String cardProvider;
  final String cardNumber;
  final DateTime expiryDate;
  final double expense;

  Card({
    @required this.cardProvider,
    @required this.cardNumber,
    @required this.expiryDate,
    @required this.expense,
  });
}

class CardsData {
  static final List<Card> cards = [
    Card(
      cardProvider: 'MasterCard',
      cardNumber: '4523 2343 2341 2543',
      expiryDate: DateTime(2023, 4),
      expense: 7382,
    ),
    Card(
      cardProvider: 'visa',
      cardNumber: '4523 2343 2341 2543',
      expiryDate: DateTime(2021, 8),
      expense: 5492,
    ),
    Card(
      cardProvider: 'visa',
      cardNumber: '4523 2343 2341 2543',
      expiryDate: DateTime(2023, 4),
      expense: 1394,
    ),
    Card(
      cardProvider: 'MasterCard',
      cardNumber: '4523 2343 2341 2543',
      expiryDate: DateTime(2023, 5),
      expense: 2617,
    ),
    Card(
      cardProvider: 'visa',
      cardNumber: '4523 2343 2341 2543',
      expiryDate: DateTime(2022, 9),
      expense: 2621,
    ),
  ];
}

enum Expensee { add, minus }

class Expense {
  final String expenseName;
  final Expensee expenseType;
  final double expenseAmount;
  final DateTime expenseTime;

  Expense(
      this.expenseName, this.expenseType, this.expenseAmount, this.expenseTime);
}

class ExpenseList {
  static final List<Expense> expenseList = [
    Expense(
      'Buy Books',
      Expensee.minus,
      92,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Buy Movie',
      Expensee.minus,
      84.234,
      DateTime(2020, 9, 4),
    ),
    Expense(
      'Netflix Subscription',
      Expensee.minus,
      23.66,
      DateTime(2020, 1, 2),
    ),
    Expense(
      'Date',
      Expensee.minus,
      302.39,
      DateTime(2020, 10, 29),
    ),
    Expense(
      'Saving Money',
      Expensee.add,
      201,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Photo Box',
      Expensee.minus,
      56,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Buy Books',
      Expensee.minus,
      92,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Photo Box',
      Expensee.minus,
      56,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Saving Money',
      Expensee.add,
      201,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Buy Books',
      Expensee.minus,
      92,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Photo Box',
      Expensee.minus,
      56,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Buy Books',
      Expensee.minus,
      92,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Saving Money',
      Expensee.add,
      201,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Photo Box',
      Expensee.minus,
      56,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Buy Books',
      Expensee.minus,
      92,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Saving Money',
      Expensee.add,
      201,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Photo Box',
      Expensee.minus,
      56,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Buy Books',
      Expensee.minus,
      92,
      DateTime(2020, 11, 24),
    ),
    Expense(
      'Saving Money',
      Expensee.add,
      201,
      DateTime(2020, 11, 24),
    ),
  ];
}

class ExpenseCategory {
  final String categoryName;
  final double amount;

  ExpenseCategory(this.categoryName, this.amount);
}

class ExpenseCategoryList {
  static List<ExpenseCategory> expenseCategoryList = [
    ExpenseCategory('Books', 372),
    ExpenseCategory('Photos', 275),
    ExpenseCategory('Games', 285),
    ExpenseCategory('Decelopment', 538),
    ExpenseCategory('Movies', 245),
  ];
}
