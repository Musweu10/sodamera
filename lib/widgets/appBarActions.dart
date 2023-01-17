import 'package:flutter/material.dart';
import 'package:sodamera/screens/edit_info.dart';

import '../screens/add_card.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AddCardScreen(),
          ),
        );
      },
      icon: const Icon(Icons.add, size: 30, color: Colors.blue),
    );
  }
}

class AppBarActionItemEdit extends StatelessWidget {
  const AppBarActionItemEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const EditInfoScreen(),
          ),
        );
      },
      icon: const Icon(Icons.edit, size: 30, color: Colors.blue),
    );
  }
}
