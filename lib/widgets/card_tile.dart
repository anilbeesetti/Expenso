import 'package:expenso/screens/transactions_card_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../models/card.dart';

class CardTile extends StatelessWidget {
  final int index;
  const CardTile({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 25, right: 20, left: 20),
      margin: EdgeInsets.only(right: 15, top: 10, bottom: 10),
      width: 180,
      decoration: BoxDecoration(
        color: CardsData.cards[index].cardProvider == 'MasterCard'
            ? kSecondaryAccentColor
            : kPrimaryAccentColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 2),
            blurRadius: 4,
            spreadRadius: 1,
            color: CardsData.cards[index].cardProvider == 'MasterCard'
                ? kCardSecondaryBackgroundColor
                : kCardBackgroundColor,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            TransactionsCardScreen.routeName,
            arguments: {'index': index},
          );
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardsData.cards[index].cardProvider == 'MasterCard'
                  ? SvgPicture.asset(
                      'assets/icons/mastercard.svg',
                      height: 50,
                    )
                  : SvgPicture.asset(
                      'assets/icons/visa.svg',
                      fit: BoxFit.contain,
                      height: 50,
                    ),
              Text(
                CardsData.cards[index].cardNumber,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
              Spacer(),
              Text(
                '\$${CardsData.cards[index].expense.toStringAsFixed(2)}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Exp ${CardsData.cards[index].expiryDate.month}/${CardsData.cards[index].expiryDate.year}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
