import 'package:flutter/material.dart';
import 'package:covid_app2/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:velocity_x/velocity_x.dart';

class HeadCont extends StatefulWidget {
  HeadCont({this.image, this.text, this.onTap, this.child});

  final String image;
  final String text;
  final Function onTap;
  final child;
  @override
  _HeadContState createState() => _HeadContState();
}

class _HeadContState extends State<HeadCont> {
  String image;
  String text;
  Function onTap;
  dynamic child;

  @override
  void initState() {
    image = widget.image;
    text = widget.text;
    onTap = widget.onTap;
    child = widget.child;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                GestureDetector(
                  onTap: onTap,
                  child: child,
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        right: 125,
                        child: SvgPicture.asset(
                          image,
                          width: 230,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 170,
                        child: Text(
                          text,
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
    );
  }
}
