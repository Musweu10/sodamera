import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/vertical_spacer.dart';
import 'add_card.dart';

class Card {
  final String cardNumber;
  final String cardHolderName;
  final String expiryDate;

  Card({
    required this.cardNumber,
    required this.cardHolderName,
    required this.expiryDate,
  });
}

class CardsScreen extends StatelessWidget {
  CardsScreen({Key? key}) : super(key: key);

  final List<Card> cards = [
    Card(
      cardNumber: "1234  5678  9123  4567",
      cardHolderName: "Joshua Sodala",
      expiryDate: "02/23",
    ),
    Card(
      cardNumber: "1234  5678  9123  4567",
      cardHolderName: "Zac Sodala",
      expiryDate: "02/23",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: const Text("Cards"),
      ),
      body: ListView(
        children: [
          const VerticalSpacer(height: 24),
          SizedBox(
            height: 200,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: PaymentCard(
                  card: cards[index],
                ),
              ),
              separatorBuilder: (context, index) =>
              const SizedBox(width: 15),
              itemCount: cards.length,
            ),
          ),
          const VerticalSpacer(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 6),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    shape: BoxShape.circle),
              ),
              const SizedBox(width: 6),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                    color: const Color(0xFF8FA1B4).withOpacity(0.2965),
                    shape: BoxShape.circle),
              ),
            ],
          ),
          const VerticalSpacer(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Cardholder Name",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF1A1A1A),
                  ),
                ),
                const VerticalSpacer(height: 8),
                TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  cursorColor: Theme.of(context).colorScheme.primary,
                  decoration: InputDecoration(
                    hintText: "Enter your name as written on card",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: const Color(0xFF1A1A1A).withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const VerticalSpacer(height: 24),
                const Text(
                  "Card Number",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF1A1A1A),
                  ),
                ),
                const VerticalSpacer(height: 8),
                TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  cursorColor: Theme.of(context).colorScheme.primary,
                  decoration: InputDecoration(
                    hintText: "Enter card number",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: const Color(0xFF1A1A1A).withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const VerticalSpacer(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "cvv/cvc",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF1A1A1A),
                            ),
                          ),
                          const VerticalSpacer(height: 8),
                          TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            cursorColor:
                            Theme.of(context).colorScheme.primary,
                            decoration: InputDecoration(
                              hintText: "123",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: const Color(0xFF1A1A1A)
                                    .withOpacity(0.2494),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: const Color(0xFF1A1A1A)
                                      .withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color:
                                  Theme.of(context).colorScheme.primary,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Exp. Date",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF1A1A1A),
                            ),
                          ),
                          const VerticalSpacer(height: 8),
                          TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            cursorColor:
                            Theme.of(context).colorScheme.primary,
                            decoration: InputDecoration(
                              hintText: "20/20",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: const Color(0xFF1A1A1A)
                                    .withOpacity(0.2494),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: const Color(0xFF1A1A1A)
                                      .withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color:
                                  Theme.of(context).colorScheme.primary,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 81,
            width: 375,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  offset: const Offset(0, -10),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 49,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Save Changes",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                InkWell(
                  onTap: () => _showConfimrationDialog(context),
                  child: Container(
                    height: 49,
                    width: 49,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFFB3640),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: SvgPicture.asset(
                            'assets/images/remove_icon.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _showConfimrationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        insetPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          height: 373,
          width: 327,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              children: [
                const VerticalSpacer(height: 40),
                SizedBox(
                  width: 240,
                  height: 180,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: SvgPicture.asset(
                        'assets/images/remove_illustration.svg'),
                  ),
                ),
                const VerticalSpacer(height: 24),
                const Text(
                  "Are you sure to remove this card?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const VerticalSpacer(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 49,
                        width: 148,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 49,
                        width: 148,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFFB3640),
                        ),
                        child: const Center(
                          child: Text(
                            "Remove",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard({Key? key, required this.card}) : super(key: key);

  final Card card;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          left: 5,
          top: 51,
          child: SizedBox(
            width: 396,
            height: 128,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: SvgPicture.asset(
                'assets/images/visa_logo.svg',
              ),
            ),
          ),
        ),
        SizedBox(
          width: 285,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 32.13,
                    height: 10.38,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: SvgPicture.asset(
                        'assets/images/visa_logo_small.svg',
                      ),
                    ),
                  ),
                ),
                const VerticalSpacer(height: 7),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 35,
                    height: 26,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: SvgPicture.asset(
                        'assets/images/visa_card_icon.svg',
                      ),
                    ),
                  ),
                ),
                const VerticalSpacer(height: 8),
                Text(
                  card.cardNumber,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const VerticalSpacer(height: 23),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cardholder",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                        const VerticalSpacer(height: 4),
                        Text(
                          card.cardHolderName,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Exp. Date",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                        const VerticalSpacer(height: 4),
                        Text(
                          card.expiryDate,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
