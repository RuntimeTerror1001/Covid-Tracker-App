import 'package:covid_app2/Components/cont_box.dart';
import 'package:covid_app2/Components/head_cont.dart';
import 'package:covid_app2/Components/title_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PrevScreen extends StatefulWidget {
  static const String id = 'prev_screen';
  @override
  _PrevScreenState createState() => _PrevScreenState();
}

class _PrevScreenState extends State<PrevScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack(
        [
          HeadCont(
            image: 'assets/icons/maskdoctor.svg',
            text: 'The Prevention\nOf COVID-19',
            child: Icon(Icons.arrow_back_ios, color: Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          15.heightBox,
          TitleText(text: 'Prevention'),
          10.heightBox,
          VStack(
            [
              ContBox(
                image: 'assets/images/wash_hands.png',
                head: 'Wash Hands',
                text:
                    'Hand washing can protect you \nfrom COVID-19 and respiratory \ninfections, such as pneumonia,\nand gastric infections that\ncause diarrhea.',
                imgheight: 120,
                gap: 5,
              ),
              20.heightBox,
              ContBox(
                image: 'assets/images/wear_mask.png',
                head: 'Wear Mask',
                text:
                    'Wearing a medical mask can\nhelp limit the spread of some\nrespiratory diseases.',
                imgheight: 120,
                gap: 10,
              )
            ],
          ),
        ],
      ).scrollVertical(),
    );
  }
}
