import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:covid_app2/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid_app2/networking.dart';

class DropDownMenu extends StatefulWidget {
  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String selectedCont = 'India';

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
      icon: SvgPicture.asset('assets/icons/dropdown.svg'),
      onChanged: (value) {
        setState(() {
          selectedCont = value;
          getData(selectedCont);
        });
      },
    );
  }

  String returnCont() {
    return selectedCont;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
