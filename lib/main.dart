import 'Screens/prev_screen.dart';
import 'Screens/sympt_screen.dart';
import 'Screens/home_screen.dart';
import 'package:covid_app2/Components/drawer.dart';
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
      title: 'CoviTracker',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: Scaffold(
        body: Stack(children: [
          NDrawer(),
          HomeScreen(),
        ]),
      ),
      routes: {
        NDrawer.id: (context) => NDrawer(),
        HomeScreen.id: (context) => HomeScreen(),
        SymptScreen.id: (context) => SymptScreen(),
        PrevScreen.id: (context) => PrevScreen(),
      },
    );
  }
}
