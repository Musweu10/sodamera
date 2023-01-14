import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildButtons(BuildContext context, IconData icon, String title){
      return  Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.all(20),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.black12),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Text(title),
        ],
      );
    }

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color(0xFFfff0c5),
            child: SizedBox(
              height: 200,
              width: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                    child: Text(
                      "Wallet(ZMW)",
                      style: TextStyle(fontSize: 19, color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                    child: Text(
                      "K14,286.oo",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           buildButtons(context, Icons.arrow_back_sharp, "Received"),
           buildButtons(context, Icons.arrow_circle_left_sharp, "Send"),
           buildButtons(context, Icons.wallet, "Buy"),
           buildButtons(context, Icons.currency_exchange_outlined, "Exchange"),

          ],
        )
      ],
    );
  }
}
