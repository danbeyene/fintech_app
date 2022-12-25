import 'package:flutter/material.dart';
import 'package:fintech_app/constants/appTextStyle.dart';
import 'package:fintech_app/data/transaction_data.dart';
import 'package:fintech_app/constants/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({Key? key, required this.transaction})
      : super(key: key);
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: width * 0.9,
      height: width * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          border: Border.all(color: Colors.grey[300]!, width: 2.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: transaction.color),
                child: Image.asset(transaction.avatar),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    transaction.name,
                    style: AppTextStyle.LISTTILE_TITLE,
                  ),
                  Text(
                    transaction.month,
                    style: AppTextStyle.LISTTILE_SUBTITLE,
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                transaction.currentBalance,
                style: AppTextStyle.LISTTILE_TITLE,
              ),
              Row(
                children: [
                  transaction.changePercentageIndicator == 'up'
                      ? const Icon(
                    FontAwesomeIcons.turnUp,
                    color: Colors.green,
                    size: 15,
                  )
                      : const Icon(
                    FontAwesomeIcons.turnDown,
                    color: Colors.red,
                    size: 15,
                  ),
                  const SizedBox(width: 5,),
                  Text(
                    transaction.changePercentage,
                    style: AppTextStyle.LISTTILE_SUBTITLE,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
