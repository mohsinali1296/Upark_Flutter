import 'package:flutter/material.dart';
import 'package:upark/initials/splash.dart';
import 'package:upark/utils/color.dart';
import 'dashboard/nearestparking.dart';
import 'dashboard/newad.dart';
import 'initials/onboardingScreen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: appThemeColor,
        canvasColor: Colors.transparent
      ),
      title: "Upark",
      home: Splash(),
    );
  }
}