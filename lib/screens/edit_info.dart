import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/vertical_spacer.dart';

class EditInfoScreen extends StatelessWidget {
  const EditInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Edit Profile"),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpacer(height: 32),
            Center(
              child: CircleAvatar(
                backgroundColor: const Color(0xFFF3F4F5),
                radius: 50,
                child: Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: SvgPicture.asset(
                        'assets/images/user_icon_active.svg',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const VerticalSpacer(height: 16),
            Center(
              child: Text(
                "Upload Image",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            const VerticalSpacer(height: 32),
            const Text(
              "User Name",
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
                hintText: "Enter your user name",
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
              "Email",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF1A1A1A),
              ),
            ),
            const VerticalSpacer(height: 8),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.primary,
              ),
              cursorColor: Theme.of(context).colorScheme.primary,
              decoration: InputDecoration(
                hintText: "Enter your user email",
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
              "NRC Number",
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
                hintText: "Enter NRC Number",
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
            ),  const VerticalSpacer(height: 8),
            TextField(
              keyboardType: TextInputType.phone,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.primary,
              ),
              cursorColor: Theme.of(context).colorScheme.primary,
              decoration: InputDecoration(
                hintText: "Enter your user mobile number",
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
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 81,
        width: 375,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
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
        child: Center(
          child: InkWell(
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
        ),
      ),
    );
  }
}
