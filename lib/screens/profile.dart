import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sodamera/screens/edit_info.dart';
import 'package:sodamera/screens/settings.dart';

import '../widgets/vertical_spacer.dart';
import 'my_cards.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: const Color(0xFFF3F4F5),
          height: 180,
          width: 375,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: const [
                VerticalSpacer(height: 24),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Center(
                    child: Text(
                      "J",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Color(0xFF1A1A1A),
                      ),
                    ),
                  ),
                ),
                VerticalSpacer(height: 8),
                Text(
                  "Joshua Sodala",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        const VerticalSpacer(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditInfoScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 64,
                  width: 375,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F4F5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: SvgPicture.asset(
                            'assets/images/profile_icon.svg',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      const Text(
                        "My Info",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: SvgPicture.asset(
                            'assets/images/arrow_icon.svg',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpacer(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardsScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 64,
                  width: 375,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F4F5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: SvgPicture.asset(
                            'assets/images/card_icon.svg',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Text(
                        "My Cards",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: SvgPicture.asset(
                            'assets/images/arrow_icon.svg',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpacer(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 64,
                  width: 375,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F4F5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: SvgPicture.asset(
                            'assets/images/settings_icon.svg',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      const Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: SvgPicture.asset(
                            'assets/images/arrow_icon.svg',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpacer(height: 16),
              Container(
                height: 64,
                width: 375,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: SvgPicture.asset(
                          'assets/images/help_icon.svg',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Text(
                      "Help Center",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: SvgPicture.asset(
                          'assets/images/arrow_icon.svg',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}