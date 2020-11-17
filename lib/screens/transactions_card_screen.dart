import 'package:expenso/constants.dart';
import 'package:expenso/models/card.dart' as CardsData;
import 'package:flutter/material.dart';

import '../widgets/bottom_stack.dart';

class TransactionsCardScreen extends StatelessWidget {
  static String routeName = '/transactions_screen';

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    final CardsData.Card card = CardsData.CardsData.cards[arguments['index']];
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Balance',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600]),
                    ),
                    Text(
                      '\$${card.expense.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: kSecondaryAccentColor,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          BarBuilder(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: kBarAccentColor,
                  radius: 5,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Balance'),
                Spacer(),
                CircleAvatar(
                  backgroundColor: kSecondaryAccentColor,
                  radius: 5,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Income'),
                Spacer(),
                CircleAvatar(
                  backgroundColor: kPrimaryAccentColor,
                  radius: 5,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Spending'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BottomStack(
            title: 'Expenses Category',
            child: Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                itemCount:
                    CardsData.ExpenseCategoryList.expenseCategoryList.length,
                itemBuilder: (context, index) {
                  final CardsData.ExpenseCategory expenseCategory =
                      CardsData.ExpenseCategoryList.expenseCategoryList[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 25, top: 10, right: 12),
                    child: AspectRatio(
                      aspectRatio: 3.5 / 5,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        width: 30,
                        decoration: BoxDecoration(
                          color: kBarAccentColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                            Spacer(),
                            Text(
                              '\$${expenseCategory.amount.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              expenseCategory.categoryName,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BarBuilder extends StatelessWidget {
  const BarBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ExpenseBar(
            income: 30,
            spending: 15,
            mon: 'Aug',
          ),
          ExpenseBar(
            income: 60,
            spending: 25,
            mon: 'Sep',
          ),
          ExpenseBar(
            income: 30,
            spending: 20,
            mon: 'Oct',
          ),
          ExpenseBar(
            income: 90,
            spending: 35,
            mon: 'Nov',
          ),
          ExpenseBar(
            income: 70,
            spending: 65,
            mon: 'Dec',
          ),
          ExpenseBar(
            income: 40,
            spending: 25,
            mon: 'Jan',
          ),
          ExpenseBar(
            income: 30,
            spending: 20,
            mon: 'Feb',
          )
        ],
      ),
    );
  }
}

class ExpenseBar extends StatelessWidget {
  final double income;
  final double spending;
  final String mon;
  const ExpenseBar({
    Key key,
    this.income,
    this.spending,
    this.mon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: 18,
              height: 150,
              decoration: BoxDecoration(
                color: kBarAccentColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Container(
              width: 18,
              height: income,
              decoration: BoxDecoration(
                color: kSecondaryAccentColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Container(
              width: 18,
              height: spending,
              decoration: BoxDecoration(
                color: kPrimaryAccentColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          mon,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
