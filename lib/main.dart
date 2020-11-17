import 'package:expenso/constants.dart';
import 'package:expenso/screens/transactions_card_screen.dart';
import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
        scaffoldBackgroundColor: kBackgroundColor,
        backgroundColor: kBackgroundColor,
        appBarTheme: AppBarTheme(
          color: kBackgroundColor,
          elevation: 0,
          actionsIconTheme: IconThemeData(color: Colors.black),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: HomeScreen(),
      routes: {
        TransactionsCardScreen.routeName: (ctx) => TransactionsCardScreen(),
      },
    );
  }
}
