import 'package:flutter/material.dart';
import 'package:sodamera/screens/my_cards.dart';
import 'package:sodamera/screens/profile.dart';

import '../screens/add_card.dart';
import '../screens/home.dart';
import '../screens/make_payment.dart';
import 'appBarActions.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  String _currentTabMenu = "DashBoard";

  Widget buildTransactionAppBar(BuildContext context) {
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

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    CardsScreen(),
    const MakePaymentScreen(),
    Container(
      color: Colors.greenAccent,
      child: const Text(
        'Index 3: School',
        style: optionStyle,
      ),
    ),
    const ProfileScreen(),
  ];

  static final List<Widget> _appBarActions = [
     Container(),
  const AppBarActionItems(),
     Container(),
     Container(),
  const AppBarActionItemEdit(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        _currentTabMenu = "DashBoard";
      } else if (index == 1) {
        buildTransactionAppBar(context);
        _currentTabMenu = "My Cards";
      } else if (index == 2) {
        _currentTabMenu = "Make Payment";
      } else if (index == 3) {
        _currentTabMenu = "Favorites";
      } else if (index == 4) {
        buildTransactionAppBar(context);
        _currentTabMenu = "Profile";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(_currentTabMenu),
        leading: Container(),
        actions: [
          _appBarActions.elementAt(_selectedIndex)
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payment_outlined,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              size: 30,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}