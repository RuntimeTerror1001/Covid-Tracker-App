import 'package:covid_app2/Components/cont_box.dart';
import 'package:covid_app2/Components/head_cont.dart';
import 'package:covid_app2/Components/title_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class VaccineScreen extends StatefulWidget {
  static const String id = 'vaccine_screen';
  @override
  _VaccineScreenState createState() => _VaccineScreenState();
}

class _VaccineScreenState extends State<VaccineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack(
        [
          HeadCont(
            image: 'assets/icons/vaccine.svg',
            text: 'The Vaccines for \nCOVID-19',
            child: Icon(Icons.arrow_back_ios, color: Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).scrollVertical(),
    );
  }
}
