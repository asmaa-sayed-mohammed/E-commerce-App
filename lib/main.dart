import 'package:e_commerce_app/view/view_auth/login_screen.dart'
    show LoginScreen;
import 'package:e_commerce_app/view/view_auth/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Register()),
    );
  }
}
