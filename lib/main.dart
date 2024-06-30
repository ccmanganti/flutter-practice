import 'package:flutter/material.dart';
import 'package:hello_world/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 59, 149, 177);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: primaryColor,
          scaffoldBackgroundColor: Colors.white),
      home: LoginPage(),
    );
  }
}
