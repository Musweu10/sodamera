import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sodamera/widgets/homescreen/walletCard.dart';

import '../widgets/homescreen/transactions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final useremail = FirebaseAuth.instance.currentUser;

    return ListView(
      scrollDirection: Axis.vertical,
      children:  [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              title: Text(
                "Hello, ${useremail?.email}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text("We are glad to see you!"),
            )),
        const WalletCard(),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Previous Transactions",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Transactions(),
      ],
    );
  }
}
