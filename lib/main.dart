import 'package:flutter/material.dart';
import 'package:travel/constants.dart';
import 'package:travel/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 18,
            color: Colors.white,
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
          ),
          bodyText2: TextStyle(
            fontSize: 16,
            color: Colors.white,
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
          ),
        ),
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
      ),
      home: LoginScreen(),
    );
  }
}
