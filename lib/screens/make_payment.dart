import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';
import '../widgets/vertical_spacer.dart';

class MakePaymentScreen extends StatelessWidget {
  const MakePaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0xFFF3F4F5),
                    radius: 30,
                    child: Center(
                      child: Text(
                        "S",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFF1A1A1A),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Shoprite Munali Mall",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF1A1A1A),
                        ),
                      ),
                      const VerticalSpacer(height: 1),
                      Text(
                        "shopritemunali@gmail.com",
                        style: TextStyle(
                          fontSize: 12,
                          color: const Color(0xFF1A1A1A).withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const VerticalSpacer(height: 32),
              const Text(
                "Payment Amount",
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
                  color: Theme.of(context).colorScheme.secondary,
                ),
                cursorColor: Theme.of(context).colorScheme.secondary,
                decoration: InputDecoration(
                  hintText: "Enter amount",
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
                      color: Theme.of(context).colorScheme.secondary,
                      width: 1,
                    ),
                  ),
                ),
              ),
              const VerticalSpacer(height: 32),
              const Text(
                "Payment None",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF1A1A1A),
                ),
              ),
              const VerticalSpacer(height: 8),
              TextField(
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 14,
                ),
                minLines: 8,
                maxLines: 8,
                cursorColor: Theme.of(context).colorScheme.secondary,
                decoration: InputDecoration(
                  hintText: "Add payment note",
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
                      color: Theme.of(context).colorScheme.secondary,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
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
          child: Center(
            child: InkWell(
              onTap: () => _showConfimrationDialog(context),
              child: Container(
                height: 49,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 21,
                      height: 21,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Icon(Icons.send),
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Send Payment",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
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
          height: 430,
          width: 327,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              children: [
                const VerticalSpacer(height: 40),
                const SizedBox(
                  width: 240,
                  height: 180,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Icon(Icons.send),
                  ),
                ),
                const VerticalSpacer(height: 35),
                const Text(
                  "The amount has been sent successfully!",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const VerticalSpacer(height: 40),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const PrimaryButton(text: "Ok, Thanks"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
