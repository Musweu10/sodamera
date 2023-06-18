import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../widgets/bottomnav.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.initState();
  }

  Widget _buildImage(String assetName, [double width = 200]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Biometric Capacity",
          body:
          "With the use of biometric capacity, your shopping and transactions are made faster and even easier.",
          image: _buildImage('fingerprint.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Card Transactions",
          body:
          "A wide variety of card use and many ways to transact and transfer funds and purchase of goods.",
          image: _buildImage('onlinepay.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "A wonderful environment",
          body:
          "Create, Make, and accomplish transactions at a faster rate. s To find out more, hit below to get started.",
          image: _buildImage('onlinetransact.png'),
          footer: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0,),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(55), // NEW
                primary: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'GET STARTED',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          decoration: pageDecoration,
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      back: const Text('Back',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      next: const Text('Next',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(8.0, 8.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(15.0, 5.0),
        activeColor: Colors.black,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}