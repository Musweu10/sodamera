import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sodamera/screens/authentication/fingerprint.dart';
import 'package:sodamera/screens/authentication/login.dart';
import 'package:sodamera/screens/home.dart';
import 'package:sodamera/screens/onboarding/onboarding.dart';
import 'package:sodamera/widgets/bottomnav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sodamera POS',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const BiometricFingerPrintScreen();
          } else {
            return const LoginScreen();
          }
        },
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen() ,
        '/bottomNav': (context) => const BottomNav(),
        '/login': (context) => const LoginScreen(),
        '/biometrics': (context) => const BiometricFingerPrintScreen(),
      },
      // home: const OnboardingScreen(),
    );
  }
}
