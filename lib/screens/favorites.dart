import 'package:flutter/material.dart';


class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
          'No Favorites Added Yet',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 17,
          ),
        ),
    );
  }
}
