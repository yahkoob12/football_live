import 'package:flutter/material.dart';
import 'package:football_live/constants.dart';
import 'package:football_live/screen/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Live',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Titilliumweb',
        scaffoldBackgroundColor: FbackgroundColor,
        appBarTheme: const AppBarTheme(color: FbackgroundColor),
        colorScheme: ColorScheme.fromSeed(
          seedColor: FprimaryColor,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
