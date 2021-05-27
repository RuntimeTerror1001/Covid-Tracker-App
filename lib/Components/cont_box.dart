import 'package:covid_app2/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class ContBox extends StatelessWidget {
  ContBox({this.image, this.head, this.text, this.imgheight, this.gap});

  final String image;
  final String head;
  final String text;
  final double imgheight;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 24,
            color: kActiveShadowColor,
          )
        ],
      ),
      child: Row(
        children: [
          Column(
            children: <Widget>[
              Image.asset(image, height: imgheight),
              Text(
                head,
                style: GoogleFonts.poppins(fontSize: 15),
              ),
            ],
          ),
          gap.widthBox,
          Container(
            child: Text(
              text,
              style: GoogleFonts.poppins(),
            ),
          )
        ],
      ),
    );
  }
}
