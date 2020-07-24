import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/utils/color.dart';

class PrivacyPolicy extends StatelessWidget {
  String policy1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark
      ),
      child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: greyTextColor,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Privacy Policy",
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                  fontSize: 18.0,
                  color: greyTextColor,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0,bottom: 24.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(policy1,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 14.0,
                            color: greyTextColor,
                            fontWeight: FontWeight.normal),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(policy1,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 14.0,
                            color: greyTextColor,
                            fontWeight: FontWeight.normal),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(policy1,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 14.0,
                            color: greyTextColor,
                            fontWeight: FontWeight.normal),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(policy1,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 14.0,
                            color: greyTextColor,
                            fontWeight: FontWeight.normal),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(policy1,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 14.0,
                            color: greyTextColor,
                            fontWeight: FontWeight.normal),
                      )),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
