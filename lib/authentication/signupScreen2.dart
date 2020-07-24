import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/initials/policy.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/images.dart';
import 'package:upark/utils/icons.dart';

import 'loginScreen.dart';

var _vehicleTypes = ["Type1","Type2","Type3","Type4"];

class Signup2 extends StatefulWidget {
  @override
  _Signup2State createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  bool _obscureText = true;

  var _currentTypeSelected="Type1";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    final TapGestureRecognizer _gestureRecognizer_Signup = TapGestureRecognizer()
      ..onTap = () {};

    final TapGestureRecognizer _gestureRecognizer_Terms = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(context, MaterialPageRoute(
            builder:(context)=>PrivacyPolicy()
        ));
      };

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(

          child: Column(
            children: <Widget>[
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    width: width,
                    height: height*.37,
                    color: themeColor,
                  ),
                  Positioned(
                    child: Center(
                      child: Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SvgPicture.asset(appLogoIcon,),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 32.0,
                                    left: 16.0,
                                    right: 16.0,
                                    bottom: 32.0),
                                child: Container(
                                  width: width,
                                  //height: 420,
                                  padding: EdgeInsets.only(bottom: 20.0),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[400],
                                          blurRadius: 4.0,
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(top: 16.0),
                                          child: Text("Sign Up",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 22.0,
                                                    color: greyTextColor,
                                                    fontWeight: FontWeight.bold),
                                              )),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 32.0, right: 32.0, top: 16.0),
                                          child: Container(
                                            child: DropdownButtonHideUnderline(
                                              child: new Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  new InputDecorator(
                                                    decoration: InputDecoration(
                                                        filled: false,
                                                        labelText: 'Vehicle Type',
                                                        focusedBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(
                                                              Radius.circular(5.0)),
                                                          borderSide: BorderSide(
                                                              color:
                                                              new Color(0x3D707070)),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(
                                                              Radius.circular(5.0)),
                                                          borderSide: BorderSide(
                                                              color:
                                                              new Color(0x3D707070)),
                                                        )
                                                    ),

                                                    child: new DropdownButton<String>(
                                                      isDense: true,
                                                      onChanged: (String typeSelected)
                                                      {
                                                        setState(() {
                                                          this._currentTypeSelected = typeSelected;
                                                        });
                                                      },
                                                      items: _vehicleTypes.map((String dropDownStringItems){
                                                        return DropdownMenuItem<String>(
                                                          value: dropDownStringItems,
                                                          child: Text(dropDownStringItems),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 32.0, right: 32.0, top: 8.0),
                                          child: Container(
                                            height: height*.055,
                                            child: TextField(
                                              autofocus: false,
                                              maxLines: 1,
                                              textDirection: TextDirection.ltr,
                                              decoration: InputDecoration(
                                                  labelText: "Vehicle Make",
                                                  labelStyle: TextStyle(
                                                      color: greyTextColor),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color:
                                                        new Color(0x3D707070)),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color:
                                                        new Color(0x3D707070)),
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 32.0, right: 32.0, top: 8.0),
                                          child: Container(
                                            height: height*.055,
                                            child: TextField(
                                              autofocus: false,
                                              maxLines: 1,
                                              textDirection: TextDirection.ltr,
                                              decoration: InputDecoration(
                                                  labelText: "Vehicle Model",
                                                  labelStyle: TextStyle(
                                                      color: greyTextColor),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color:
                                                        new Color(0x3D707070)),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color:
                                                        new Color(0x3D707070)),
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 16.0, bottom: 16.0),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "You agree with",
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 15.0,
                                                      color: greyTextColor,
                                                      fontWeight:
                                                      FontWeight.normal),
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text: " terms & conditions",
                                                      recognizer:
                                                      _gestureRecognizer_Terms,
                                                      style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 15.0,
                                                            color: greyTextColor,
                                                            fontWeight:
                                                            FontWeight.bold),
                                                      ))
                                                ]),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 32.0, right: 32.0, top: 8.0),
                                          child: Hero(
                                            tag: "tag_SignInBtn",
                                            child: Container(
                                              height: height*.062,
                                              child: MaterialButton(
                                                  padding: EdgeInsets.only(
                                                      top: 8.0, bottom: 8.0),
                                                  onPressed: () {},
                                                  color: themeColor,
                                                  elevation: 4.0,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget>[
                                                      Container(
                                                        margin: EdgeInsets.only(left: width*0.28),
                                                        alignment: Alignment.center,
                                                        child: Text("Proceed",
                                                            style: GoogleFonts.poppins(
                                                              textStyle: TextStyle(
                                                                  fontSize: 17.0,
                                                                  color: Colors.white,
                                                                  fontWeight:
                                                                  FontWeight.w800),
                                                            )),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(right: width*.015),
                                                        child: InkWell(
                                                            onTap: (){},
                                                            child: SvgPicture.asset(circularArrowIcon,fit: BoxFit.fitHeight,)
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  minWidth: width,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.all(
                                                          Radius.circular(8.0)))),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 12.0),
                                          child: Hero(
                                            tag: "tag_SignupText",
                                            child: GestureDetector(
                                              onTap: (){},
                                              child: RichText(
                                                text: TextSpan(
                                                    text: "Already have an account?",
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 14.0,
                                                          color: greyTextColor,
                                                          fontWeight: FontWeight.normal),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: " Sign in",
                                                          recognizer:
                                                          TapGestureRecognizer(
                                                          )..onTap = (){
                                                            Navigator.push(context, MaterialPageRoute(
                                                                builder:(context)=>Login()
                                                            ));
                                                          },
                                                          style: GoogleFonts.poppins(
                                                            textStyle: TextStyle(
                                                                fontSize: 15.0,
                                                                color: greyTextColor,
                                                                fontWeight:
                                                                FontWeight.bold),
                                                          ))
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

