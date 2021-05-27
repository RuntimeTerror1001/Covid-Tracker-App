import 'package:flutter/material.dart';
import 'package:covid_app2/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:velocity_x/velocity_x.dart';

class HeadCont extends StatelessWidget {
  HeadCont({this.image, this.text, this.cheight});

  final String image;
  final String text;
  final double cheight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Container(
            padding: EdgeInsets.only(left: 40, top: 50, right: 20),
            width: double.infinity,
            height: cheight,
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
                  onTap: () {},
                  child: SvgPicture.asset("assets/icons/menu.svg"),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        image,
                        width: 230,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                      ),
                      Positioned(
                        top: 40,
                        left: 150,
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

// Color(0XFF3383CD)
