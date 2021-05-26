import 'package:covid_app2/Components/head_cont.dart';
import 'package:covid_app2/constants.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SymptScreen extends StatefulWidget {
  static const String id = 'info_screen';
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
            text: 'Get to know\nAbout COVID-19',
            cheight: 250,
          ),
          15.heightBox,
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Symptoms",
              style: kTitleTextstyle.copyWith(fontSize: 20),
            ),
          ),
          10.heightBox,
          SympBox(
            image: 'assets/images/headache.png',
            head: 'Fatigue',
            text:
                'Fatigue can be described as the lack \nof energy and motivation \n(both physical and mental).',
          ),
          10.heightBox,
          SympBox(
            image: 'assets/images/caugh.png',
            head: 'Cough',
            text:
                'A cough is a forceful release of air \nfrom the lungs that can be heard.',
          ),
          10.heightBox,
          SympBox(
            image: 'assets/images/fever.png',
            head: 'Fever',
            text:
                'A person has a fever if their body \ntemperature rises above the normal \nrange of 98–100°F (36–37°C).',
          ),
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).scrollVertical(),
    );
  }
}

class SympBox extends StatelessWidget {
  SympBox({this.image, this.head, this.text});

  final String image;
  final String head;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: kBodyTextColor.withOpacity(0.3),
          )
        ],
      ),
      child: Row(
        children: [
          Column(
            children: <Widget>[
              Image.asset(image, height: 90),
              Text(
                head,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          15.widthBox,
          Container(
            child: Text(
              text,
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
