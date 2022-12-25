import 'package:flutter/material.dart';
import 'package:fintech_app/data/card_data.dart';
import 'package:fintech_app/data/transaction_data.dart';
import 'package:fintech_app/widgets/myCard.dart';
import 'package:fintech_app/widgets/transaction_card.dart';
import 'package:fintech_app/constants/color_constants.dart';
import 'package:fintech_app/constants/appTextStyle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 16.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset('assets/icons/avatar1.png'),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Bank App",
          style: TextStyle(fontFamily: 'Poppins', color: kPrimaryColor),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: 27.0,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: ListView.separated(
                    physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      return MyCard(card: cardList[index]);
                    },
                    separatorBuilder: (context,index){
                      return const SizedBox(width: 10.0,);
                    },
                    itemCount: cardList.length),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Transaction Details',
                style: AppTextStyle.BODY_TITLE,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 410,
                child: ListView.separated(
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index){
                      return TransactionCard(transaction: transactionList[index]);
                    },
                    separatorBuilder: (context,index){
                      return const SizedBox(height: 10.0,);
                    },
                    itemCount: transactionList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
