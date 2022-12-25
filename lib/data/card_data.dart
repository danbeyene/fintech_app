import 'package:flutter/material.dart';
import 'package:fintech_app/constants/color_constants.dart';
class CardModel {
  String cardHolderName;
  String cardNumber;
  String expDate;
  String cvv;
  Color cardColor;
  CardModel(
      {required this.cardHolderName,
      required this.cardNumber,
      required this.expDate,
      required this.cvv,
      required this.cardColor});
}

List<CardModel> cardList= [
  CardModel(
    cardHolderName:'Dagnachew Beyene',
      cardNumber: '**** **** *** 1234',
      expDate:'11/24',
      cvv:'**2',
      cardColor: kbBackgroundColor),
  CardModel(
      cardHolderName:'Lina Alex',
      cardNumber: '**** **** *** 1234',
      expDate:'11/24',
      cvv:'**2',
      cardColor: kSecondaryColor)
];
