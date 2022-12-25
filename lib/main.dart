import 'package:fintech_app/data/card_data.dart';
import 'package:fintech_app/data/transaction_data.dart';
import 'package:fintech_app/screens/base_screen.dart';
import 'package:fintech_app/screens/home_screen.dart';
import 'package:fintech_app/widgets/myCard.dart';
import 'package:fintech_app/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banking App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Poppins',
          appBarTheme:
              const AppBarTheme(backgroundColor: Colors.white, elevation: 0),
          primarySwatch: Colors.blue),
      home:  const BaseScreen(),
    );
  }
}

