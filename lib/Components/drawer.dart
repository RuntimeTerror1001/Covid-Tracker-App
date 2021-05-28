import 'package:covid_app2/Screens/prev_screen.dart';
import 'package:covid_app2/Screens/sympt_screen.dart';
import 'package:covid_app2/Screens/test_screen.dart';
import 'package:covid_app2/Screens/vaccine_screen.dart';
import 'package:flutter/material.dart';
import 'package:covid_app2/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NDrawer extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _NDrawerState createState() => _NDrawerState();
}

class _NDrawerState extends State<NDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                colors: [Colors.blue, Color(0XFF11249F)],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              height: double.infinity,
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/docback.png',
                    height: 300,
                    width: 300,
                  ),
                  5.heightBox,
                  'CoviTracker'
                      .text
                      .xl5
                      .bold
                      .textStyle(kTitleTextstyle)
                      .make()
                      .shimmer(primaryColor: kPrimaryColor),
                  30.heightBox,
                  Expanded(
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ListItem(
                          i: Icons.notification_important,
                          title: 'Symptoms',
                          tap: () {
                            Navigator.pushNamed(context, SymptScreen.id);
                          },
                        ),
                        15.heightBox,
                        ListItem(
                          i: Icons.gpp_good,
                          title: 'Prevention',
                          tap: () {
                            Navigator.pushNamed(context, PrevScreen.id);
                          },
                        ),
                        15.heightBox,
                        ListItem(
                          i: FontAwesomeIcons.vial,
                          title: 'Tests',
                          tap: () {
                            Navigator.pushNamed(context, TestScreen.id);
                          },
                        ),
                        15.heightBox,
                        ListItem(
                          i: FontAwesomeIcons.syringe,
                          title: 'Vaccination',
                          tap: () {
                            Navigator.pushNamed(context, VaccineScreen.id);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({this.i, this.title, this.tap});

  final IconData i;
  final String title;
  final Function tap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        i,
        color: Colors.white,
        size: 40,
      ),
      title: title.text.white.textStyle(GoogleFonts.poppins()).make(),
      onTap: tap,
    );
  }
}
