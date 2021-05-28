import 'package:flutter/material.dart';
import '../constants.dart';

class TitleText extends StatelessWidget {
  const TitleText({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: kTitleTextstyle.copyWith(fontSize: 20),
      ),
    );
  }
}
