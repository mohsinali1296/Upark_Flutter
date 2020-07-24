import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upark/initials/onboardingScreen.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/icons.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void MoveToOnboarding() {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(
        builder:(context)=>OnBoardScreen()
    ));
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), MoveToOnboarding);
  }

  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark
        ),
        child: SafeArea(
          child:  Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: Container(
                  height: 177.01,
                  width: 165.89,
                  child: SvgPicture.asset(mainAppLogo,fit: BoxFit.fill,),
                ),
              ),
          ),
        ),
      );
  }
}
