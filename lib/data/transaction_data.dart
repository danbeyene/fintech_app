import 'package:flutter/material.dart';
import 'package:fintech_app/constants/color_constants.dart';

class TransactionModel {
  String name;
  String avatar;
  String currentBalance;
  String month;
  String changePercentageIndicator;
  String changePercentage;
  Color color;
  TransactionModel(
      {required this.name,
      required this.avatar,
      required this.currentBalance,
      required this.month,
      required this.changePercentageIndicator,
      required this.changePercentage,
      required this.color});
}

List<TransactionModel> transactionList = [
  TransactionModel(
      name: 'selam tesfaye',
      avatar: 'assets/icons/avatar1.png',
      currentBalance: '\$25000',
      month: 'Sept',
      changePercentageIndicator: 'up',
      changePercentage: '0.12%',
      color: Colors.green[100]!),
  TransactionModel(
      name: 'girum ermias',
      avatar: 'assets/icons/avatar2.png',
      currentBalance: '\$150000',
      month: 'Oct',
      changePercentageIndicator: 'down',
      changePercentage: '0.25%',
      color: Colors.green[100]!),
  TransactionModel(
      name: 'hanan tariq',
      avatar: 'assets/icons/avatar3.png',
      currentBalance: '\$450000',
      month: 'Nov',
      changePercentageIndicator: 'up',
      changePercentage: '0.27%',
      color: Colors.green[100]!),
  TransactionModel(
      name: 'fenan hidru',
      avatar: 'assets/icons/avatar4.png',
      currentBalance: '\$1200000',
      month: 'Dec',
      changePercentageIndicator: 'down',
      changePercentage: '0.43%',
      color: Colors.green[100]!)
];
