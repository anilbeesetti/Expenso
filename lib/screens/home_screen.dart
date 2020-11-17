import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/card.dart';
import '../widgets/card_tile.dart';
import '../widgets/expense_tile.dart';
import '../widgets/bottom_stack.dart';
// import '../widgets/draggable_sheet.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/';
  String get day {
    String day;
    var timeNow = TimeOfDay.now().hour;
    if (timeNow > 0 && timeNow < 12) {
      day = 'Morning';
    } else if (timeNow < 16) {
      day = 'AfterNoon';
    } else {
      day = 'Evening';
    }
    return day;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              child: SvgPicture.asset('assets/icons/avatar.svg'),
              backgroundColor: Colors.transparent,
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Good $day',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              'Attitude Anil',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              itemCount: CardsData.cards.length,
              itemBuilder: (context, index) {
                return CardTile(index: index);
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BottomStack(
            title: 'Expenses',
            child: Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10, right: 10),
                itemCount: ExpenseList.expenseList.length,
                itemBuilder: (context, index) {
                  return ExpenseTile(
                    index: index,
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
