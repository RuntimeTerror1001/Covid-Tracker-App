import 'package:flutter/material.dart';
import 'package:covid_app2/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:velocity_x/velocity_x.dart';

class HeadCont extends StatelessWidget {
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
                colors: [Color(0XFF3383CD), Color(0XFF11249F)],
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/virus.png'),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset('assets/icons/menu.svg'),
                ),
                SizedBox(
                  height: 20,
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
                          'All you need to do \nis to stay home !!',
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
