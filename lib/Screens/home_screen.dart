import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:covid_app2/Components/bottom_container.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:covid_app2/Components/head_cont.dart';
import 'package:intl/intl.dart';
import 'package:covid_app2/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    String date = DateFormat('MMMMd').format(now);

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFF3382CC),
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: VStack(
        [
          HeadCont(
            image: 'assets/icons/Drcorona.svg',
            text: 'All you need to do \nis to stay home !!',
            cheight: 260,
          ),
          10.heightBox,
          MidText(date: date),
          10.heightBox,
          BottomContainer(),
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).scrollVertical(),
    );
  }
}

class MidText extends StatelessWidget {
  const MidText({
    Key key,
    @required this.date,
  }) : super(key: key);

  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Case Update\n',
              style: kTitleTextstyle,
            ),
            TextSpan(text: date, style: TextStyle(color: kTextLightColor)),
          ],
        ),
      ),
    );
  }
}
