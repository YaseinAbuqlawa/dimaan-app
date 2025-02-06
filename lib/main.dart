import 'package:dimaan/models/colors.dart';
import 'package:dimaan/pages/welcome.dart';
import 'package:dimaan/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: WidgetStatePropertyAll(AppColors.greyColor2),
            padding: WidgetStatePropertyAll(EdgeInsets.all(0)),
            iconColor: WidgetStatePropertyAll(Colors.black)
          )
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Welcome(),
    );
  }
}

