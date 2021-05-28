import 'package:covid_app2/Components/cont_box.dart';
import 'package:covid_app2/Components/head_cont.dart';
import 'package:covid_app2/Components/title_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

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
          15.heightBox,
          TitleText(text: 'Vaccines'),
          10.heightBox,
          ContBox(
            image: 'assets/icons/covaxin.png',
            head: 'CoVaxin',
            text:
                'CoVaxin (codenamed as BBV152) is a\nvirus-based COVID-19 vaccine developed\nby Bharat Biotech in collaboration with\nthe Indian Council of Medical Research.',
            imgheight: 90,
            gap: 15,
          ),
          20.heightBox,
          ContBox(
            image: 'assets/icons/covishield.png',
            head: 'CoviShield',
            text:
                'CoviShield (codenamed as AZD1222)\nis a viral vector vaccine for prevention\nof COVID-19 developed by \nOxford University and AstraZeneca.',
            imgheight: 90,
            gap: 15,
          ),
          20.heightBox,
          Center(
            child: RawMaterialButton(
              onPressed: () async {
                const url = 'https://selfregistration.cowin.gov.in/';
                if (await canLaunch(url)) {
                  launch(url);
                } else {
                  print('Cannot launch');
                }
              },
              child: Text(
                'Click here for Registeration for Vaccine',
                style: GoogleFonts.poppins(
                    color: Colors.blue, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).scrollVertical(),
    );
  }
}
