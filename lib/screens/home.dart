import 'package:flutter/material.dart';
import 'package:sodamera/widgets/homescreen/walletCard.dart';

import '../widgets/homescreen/transactions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children:  const [
        WalletCard(),
        SizedBox(
          height: 30,
        ),
        Text("Previous Transactions"),
        SizedBox(
          height: 30,
        ),
        Transactions(),
      ],
    );
  }
}
