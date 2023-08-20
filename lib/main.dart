import 'package:flutter/material.dart';
import 'colorCode.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive LogIn Ui',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorCode.backgroundColor,
      ),
      home: const LogInScreen(),
    );
  }
}
