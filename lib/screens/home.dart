import 'package:flutter/material.dart';
import 'package:sodamera/widgets/homescreen/walletCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  const [
        WalletCard(),
      ],
    );
  }
}
