import 'package:covid_app2/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class NDrawer extends StatefulWidget {
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
              // width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/docback.png',
                    height: 250,
                    width: 250,
                  ),
                  5.heightBox,
                  'CoviTracker'
                      .text
                      .xl3
                      .bold
                      .textStyle(kTitleTextstyle)
                      .make()
                      .shimmer(primaryColor: kPrimaryColor),
                  50.heightBox,
                  Expanded(
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ListItem(i: Icons.home, title: 'Home'),
                        ListItem(
                            i: Icons.notification_important, title: 'Symptoms'),
                        ListItem(i: Icons.gpp_good, title: 'Prevention'),
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
        size: 35,
      ),
      title: title.text.white.textStyle(GoogleFonts.poppins()).make(),
      onTap: tap,
    );
  }
}
