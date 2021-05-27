import 'Screens/prev_screen.dart';
import 'Screens/sympt_screen.dart';
import 'Screens/home_screen.dart';
import 'package:covid_app2/constants.dart';
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
      home: Scaffold(body: SymptScreen()),
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id: (context) => HomeScreen(),
      //   InfoScreen.id: (context) => InfoScreen(),
      //   PrevScreen.id: (context) => PrevScreen(),
      // },
    );
  }
}
