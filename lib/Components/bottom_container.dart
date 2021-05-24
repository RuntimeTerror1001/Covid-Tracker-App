import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid_app2/constants.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:covid_app2/networking.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomContainer extends StatefulWidget {
  @override
  _BottomContainerState createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  String selectedCont = null;
  int totinf;
  int totdeath;
  int totrec;
  int todinf;
  int totcrit;
  int totact;

  void getValues() async {
    var data = await getData(selectedCont);
    setState(() {
      totinf = data['cases'];
      totdeath = data['deaths'];
      totrec = data['recovered'];
      totact = data['active'];
      totcrit = data['critical'];
      todinf = data['todayCases'];
    });
    // print(totinf);
  }

  DropdownButton<String> dropDown() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String cont in kContList) {
      var newItem = DropdownMenuItem(
        child: Text(cont, style: GoogleFonts.merriweather()),
        value: cont,
      );
      dropDownItems.add(newItem);
    }

    return DropdownButton<String>(
      underline: SizedBox(),
      value: selectedCont,
      items: dropDownItems,
      isExpanded: true,
      hint: Text('Select'),
      icon: SvgPicture.asset('assets/icons/dropdown.svg'),
      onChanged: (value) {
        setState(() {
          selectedCont = value;
          getValues();
          print(selectedCont);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SvgPicture.asset('assets/icons/maps-and-flags.svg'),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: 340,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFFE5E5E5)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 15),
                child: Column(
                  children: [
                    dropDown(),
                  ],
                ),
              ),
            ),
          ],
        ),
        20.heightBox,
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                color: kShadowColor,
                blurRadius: 30,
              )
            ],
          ),
          child: Row(
            children: [
              LowerCont(
                str: "Infected",
                totcases: totinf == null ? 0 : totinf,
                todcases: todinf == null ? 0 : todinf,
                col: kInfectedColor,
                bottomcol: kInfectedColor,
                bottomText: " Today\nInfected",
              ),
              LowerCont(
                str: "Deaths",
                totcases: totdeath == null ? 0 : totdeath,
                todcases: totcrit == null ? 0 : totcrit,
                col: kDeathColor,
                bottomcol: Colors.red[900],
                bottomText: " Total\nCritical",
              ),
              LowerCont(
                str: "Recovered",
                totcases: totrec == null ? 0 : totrec,
                todcases: totact == null ? 0 : totact,
                col: kRecoveredColor,
                bottomcol: kPrimaryColor,
                bottomText: " Total\nActive",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LowerCont extends StatelessWidget {
  const LowerCont(
      {this.str,
      this.todcases,
      this.totcases,
      this.col,
      this.bottomcol,
      this.bottomText});

  final int totcases;
  final int todcases;
  final String str;
  final String bottomText;
  final Color col;
  final Color bottomcol;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: col.withOpacity(0.26),
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                  color: col,
                  width: 2,
                ),
              ),
            ),
          ),
          10.heightBox,
          totcases.text
              .textStyle(
                TextStyle(
                  color: col,
                  fontSize: 23,
                ),
              )
              .make(),
          10.heightBox,
          "  Total\n$str".text.textStyle(kSubTextStyle).make(),
          20.heightBox,
          todcases.text
              .textStyle(
                TextStyle(
                  color: bottomcol,
                  fontSize: 23,
                ),
              )
              .make(),
          10.heightBox,
          bottomText.text.textStyle(kSubTextStyle).make(),
        ],
      ),
    );
  }
}
