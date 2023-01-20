import 'package:flutter/material.dart';
import 'package:sodamera/widgets/homescreen/walletCard.dart';

import '../widgets/homescreen/transactions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: const [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              title: Text(
                "Hello, Joshua",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("We are glad to see you!"),
            )),
        WalletCard(),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Previous Transactions",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Transactions(),
      ],
    );
  }
}
