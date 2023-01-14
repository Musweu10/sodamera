import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildMyTransactions(BuildContext context,String title,subTitle,amount,time) {
      return ListTile(
        style: ListTileStyle.list,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        leading: const Icon(Icons.currency_bitcoin, size: 20),
        title:  Text(title),
        subtitle:  Text(subTitle),
        trailing: Column(
          children:  [
            Text(amount),
            // SizedBox(
            //   height: 10,
            // ),
            Text(time),
          ],
        ),
      );
    }

    return  Column(
      children: [
        buildMyTransactions(context, "Milk", "Shoprite", "K 26", "14:34 PM"),
        buildMyTransactions(context, "Bread", "Pick n Pay", "K 16", "4:24 PM"),
        buildMyTransactions(context, "Soap", "Shoprite", "K 46", "12:34 PM"),
        buildMyTransactions(context, "Pizza", "Romans Pizza", "K 126", "11:00 AM"),
        buildMyTransactions(context, "PlayStation 4", "Game", "K 4600", "14:34 PM"),
        buildMyTransactions(context, "Milk", "Shoprite", "K 26", "14:34 PM"),
      ],
    );
  }
}
