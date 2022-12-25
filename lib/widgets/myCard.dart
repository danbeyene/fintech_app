import 'package:flutter/material.dart';
import 'package:fintech_app/constants/appTextStyle.dart';
import 'package:fintech_app/data/card_data.dart';
import 'package:fintech_app/constants/color_constants.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key, required this.card}) : super(key: key);
  final CardModel card;
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: width*0.8,
      height: width*0.5,
      decoration: BoxDecoration(
        color: card.cardColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('CARD NAME', style: AppTextStyle.MY_CARD_TITLE,),
                  Text(card.cardHolderName, style: AppTextStyle.MY_CARD_SUBTITLE,)
                ],
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/vcard.png'),
              )
            ],
          ),
          Text(card.cardNumber,style: AppTextStyle.MY_CARD_SUBTITLE,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('EXP DATE', style: AppTextStyle.MY_CARD_TITLE,),
                  Text(card.expDate,style: AppTextStyle.MY_CARD_SUBTITLE,)
                ],
              ),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('CVV NUMBER', style: AppTextStyle.MY_CARD_TITLE,),
                  Text(card.cvv,style: AppTextStyle.MY_CARD_SUBTITLE,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}




