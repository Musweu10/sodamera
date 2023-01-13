import 'package:flutter/material.dart';
import 'package:sodamera/screens/authentication/login.dart';
import 'package:sodamera/screens/home.dart';
import 'package:sodamera/screens/onboarding/onboarding.dart';
import 'package:sodamera/widgets/bottomnav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sodamera',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen() ,
        '/bottomNav': (context) => const BottomNav(),
        '/login': (context) => const LoginScreen(),
      },
      // home: const OnboardingScreen(),
    );
  }
}
