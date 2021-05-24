import 'package:covid_app2/constants.dart';
import 'package:covid_app2/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COVID-19 Demo App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: HomeScreen(),
      initialRoute: HomeScreen.id,
    );
  }
}
