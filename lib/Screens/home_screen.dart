import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import 'package:covid_app2/Components/bottom_container.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';
import 'package:covid_app2/constants.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scalingFact = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    String date = DateFormat('MMMMd').format(now);

    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scalingFact),
      duration: Duration(milliseconds: 250),
      child: Scaffold(
        body: VStack(
          [
            Column(
              children: [
                ClipPath(
                  clipper: OvalBottomBorderClipper(),
                  child: Container(
                    padding: EdgeInsets.only(left: 40, top: 50, right: 20),
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.red, Color(0XFF11249F)],
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/images/virus.png'),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        isDrawerOpen
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    xOffset = 0;
                                    yOffset = 0;
                                    scalingFact = 1;
                                    isDrawerOpen = false;
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    xOffset = 230;
                                    yOffset = 460;
                                    scalingFact = 0.6;
                                    isDrawerOpen = true;
                                  });
                                },
                                child:
                                    SvgPicture.asset('assets/icons/menu.svg'),
                              ),
                        Expanded(
                          child: Stack(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/Drcorona.svg',
                                width: 230,
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.topCenter,
                              ),
                              Positioned(
                                top: 40,
                                left: 150,
                                child: Text(
                                  'All you need to do\nis to stay home!!',
                                  style: GoogleFonts.redressed(
                                    textStyle: kHeadingTextStyle.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                20.heightBox,
                Container(
                  height: 20,
                  child: VxMarquee(
                    text: 'Stay Home Stay Safe!!',
                    textStyle: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            30.heightBox,
            MidText(date: date),
            20.heightBox,
            BottomContainer(),
          ],
          crossAlignment: CrossAxisAlignment.start,
        ).scrollVertical(),
      ),
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
                style: kTitleTextstyle.copyWith(
                    fontSize: 18, color: kTitleTextColor)),
            TextSpan(text: date, style: TextStyle(color: kTextLightColor)),
          ],
        ),
      ),
    );
  }
}
