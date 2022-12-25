import 'package:flutter/material.dart';
import 'package:fintech_app/data/card_data.dart';
import 'package:fintech_app/widgets/myCard.dart';
import 'package:fintech_app/constants/color_constants.dart';
import 'package:fintech_app/constants/appTextStyle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          "My Cards",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: ListView.separated(
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return MyCard(card: cardList[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20.0,
                    );
                  },
                  itemCount: cardList.length),
            ),
            const CircleAvatar(
              radius: 30.0,
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            const Text(
              'Add Card',
              style: AppTextStyle.LISTTILE_TITLE,
            )
          ],
        ),
      ),
    );
  }
}
