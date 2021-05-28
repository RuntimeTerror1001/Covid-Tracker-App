import 'package:covid_app2/Components/cont_box.dart';
import 'package:covid_app2/Components/head_cont.dart';
import 'package:covid_app2/Components/title_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SymptScreen extends StatefulWidget {
  static const String id = 'sympt_screen';
  @override
  _SymptScreenState createState() => _SymptScreenState();
}

class _SymptScreenState extends State<SymptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack(
        [
          HeadCont(
            image: 'assets/icons/coronadr.svg',
            text: 'The Symptoms\nOf COVID-19',
            child: Icon(Icons.arrow_back_ios, color: Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          15.heightBox,
          TitleText(text: 'Symptoms'),
          10.heightBox,
          ContBox(
            image: 'assets/images/headache.png',
            head: 'Fatigue',
            text:
                'Fatigue can be described as the\nlack of energy and motivation \n(both physical and mental).',
            imgheight: 90,
            gap: 15,
          ),
          10.heightBox,
          ContBox(
            image: 'assets/images/caugh.png',
            head: 'Cough',
            text:
                'A cough is a forceful release\nof air from the lungs that can \nbe heard.',
            imgheight: 90,
            gap: 15,
          ),
          10.heightBox,
          ContBox(
            image: 'assets/images/fever.png',
            head: 'Fever',
            text:
                'A person has a fever if their\nbody temperature rises \nabove the normal range of \n98–100°F (36–37°C).',
            imgheight: 90,
            gap: 15,
          ),
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).scrollVertical(),
    );
  }
}
