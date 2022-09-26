import 'package:flutter/material.dart';
import 'package:flutter_application_minibank/screens/pay_me.dart';
import 'package:flutter_application_minibank/screens/seeall_screen.dart';
import 'package:flutter_application_minibank/screens/signup_screen.dart';
import 'package:flutter_application_minibank/screens/login_screen.dart';
import 'package:flutter_application_minibank/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
