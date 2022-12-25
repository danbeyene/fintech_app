import 'package:flutter/material.dart';
import 'package:fintech_app/data/card_data.dart';
import 'package:fintech_app/data/transaction_data.dart';
import 'package:fintech_app/widgets/myCard.dart';
import 'package:fintech_app/widgets/transaction_card.dart';
import 'package:fintech_app/constants/color_constants.dart';
import 'package:fintech_app/constants/appTextStyle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fintech_app/screens/home_screen.dart';
import 'package:fintech_app/screens/cards_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const CardsScreen(),
    const HomeScreen(),
    const CardsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState(() {
            _selectedIndex=index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.creditCard), label: 'Cards'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.gear), label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.chartBar), label: 'Overview')
        ],
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            color: Colors.red),
        unselectedLabelStyle: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Colors.black),
      ),
    );
  }
}

