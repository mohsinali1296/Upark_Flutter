//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:upark/authentication/signupScreen2.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/images.dart';
import 'package:upark/utils/icons.dart';

//import 'package:image_picker_modern/image_picker_modern.dart';
import 'dart:io';
import 'loginScreen.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscureText = true;
  final TapGestureRecognizer _gestureRecognizer_Signup = TapGestureRecognizer()
    ..onTap = () {};
  final TapGestureRecognizer _gestureRecognizer_Terms = TapGestureRecognizer()
    ..onTap = () {};

  File _image;

  //final picker = ImagePicker();

  Future<void> getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
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
//                              Image.asset(appLogoIcon,
//                                  width: 81.37, height: 104.39),
                              SvgPicture.asset(
                                appLogoIcon,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 32.0,
                                    left: 16.0,
                                    right: 16.0,
                                    bottom: 32.0),
                                child: Container(
                                  width: width,
                                  ///height: 555.0,
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
                                              top: 16.0, left: 32.0, right: 32.0),
                                          child: Container(
                                            //height: height*0.13,
                                            width: width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  width: width*.225,
                                                  height: height*.122,
                                                  child: _image == null
                                                      ? InkWell(
                                                          onTap: getImage,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              SvgPicture.asset(
                                                                addimageicon,
                                                              ),
                                                              SizedBox(height: 5.0,),
                                                              Text(
                                                                "Add image",
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: GoogleFonts.poppins(
                                                                    fontSize: 12,
                                                                    color:
                                                                        greyTextColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      : Container(
                                                    padding: EdgeInsets.all(1.0),
                                                          child: Image.file(
                                                          _image,
                                                          fit: BoxFit.cover,

                                                        )
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                      border: Border(
                                                          top: BorderSide(
                                                              width: 1.0,
                                                              color:
                                                                  lightGreyBorderColor),
                                                          bottom: BorderSide(
                                                              width: 1.0,
                                                              color:
                                                                  lightGreyBorderColor),
                                                          left: BorderSide(
                                                              width: 1.0,
                                                              color:
                                                                  lightGreyBorderColor),
                                                          right: BorderSide(
                                                              width: 1.0,
                                                              color:
                                                                  lightGreyBorderColor))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 4.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: <Widget>[
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.0,
                                                                  right: 2.0,
                                                                  top: 0),
                                                          child: Container(
                                                            height: height*.055,
                                                            child: TextField(
                                                              autofocus: false,
                                                              maxLines: 1,
                                                              textDirection:
                                                                  TextDirection
                                                                      .ltr,
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "First Name",
                                                                      labelStyle:
                                                                          TextStyle(
                                                                              color:
                                                                                  greyTextColor),
                                                                      suffixIcon:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                                .all(
                                                                            12.0),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          userIcon2,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderRadius:
                                                                            BorderRadius.all(
                                                                                Radius.circular(5.0)),
                                                                        borderSide:
                                                                            BorderSide(
                                                                                color: new Color(0x3D707070)),
                                                                      ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderRadius:
                                                                            BorderRadius.all(
                                                                                Radius.circular(5.0)),
                                                                        borderSide:
                                                                            BorderSide(
                                                                                color: new Color(0x3D707070)),
                                                                      )),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.0,
                                                                  right: 2.0,
                                                                  top: 0),
                                                          child: Container(
                                                            height: height*.055,
                                                            margin: EdgeInsets.only(top:6.0),
                                                            child: TextField(
                                                              autofocus: false,
                                                              maxLines: 1,
                                                              textDirection:
                                                                  TextDirection
                                                                      .ltr,
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Last Name",
                                                                      labelStyle:
                                                                          TextStyle(
                                                                              color:
                                                                                  greyTextColor),
                                                                      suffixIcon:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                                .all(
                                                                            12.0),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          userIcon2,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderRadius:
                                                                            BorderRadius.all(
                                                                                Radius.circular(5.0)),
                                                                        borderSide:
                                                                            BorderSide(
                                                                                color: new Color(0x3D707070)),
                                                                      ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderRadius:
                                                                            BorderRadius.all(
                                                                                Radius.circular(5.0)),
                                                                        borderSide:
                                                                            BorderSide(
                                                                                color: new Color(0x3D707070)),
                                                                      )),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
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
                                                  labelText: "User Name",
                                                  labelStyle: TextStyle(
                                                      color: greyTextColor),
                                                  suffixIcon: Padding(
                                                    padding: const EdgeInsets.all(
                                                        12.0),
                                                    child: SvgPicture.asset(
                                                      userIcon2,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color: new Color(
                                                            0x3D707070)),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color: new Color(
                                                            0x3D707070)),
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
                                                  labelText: "Phone Number",
                                                  labelStyle: TextStyle(
                                                      color: greyTextColor),
                                                  suffixIcon: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12.0),
                                                      child: Icon(
                                                        Icons.phone_iphone,
                                                        color: greyIconColor,
                                                      ) //SvgPicture.asset(userIcon2,fit: BoxFit.contain,),
                                                      ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color: new Color(
                                                            0x3D707070)),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color: new Color(
                                                            0x3D707070)),
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 32.0, right: 32.0, top: 8.0),
                                          child: Hero(
                                            tag: "tag_EmailTextfield",
                                            child: Material(
                                              color: Colors.white,
                                              child: Container(
                                                height: height*.055,
                                                child: TextField(
                                                  autofocus: false,
                                                  maxLines: 1,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                          color: greyTextColor),
                                                      suffixIcon: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(12.0),
                                                          child: Icon(
                                                            Icons.mail,
                                                            color: greyIconColor,
                                                          ) //SvgPicture.asset(userIcon2,fit: BoxFit.contain,),
                                                          ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    5.0)),
                                                        borderSide: BorderSide(
                                                            color: new Color(
                                                                0x3D707070)),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    5.0)),
                                                        borderSide: BorderSide(
                                                            color: new Color(
                                                                0x3D707070)),
                                                      )),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 32.0, right: 32.0, top: 8.0),
                                          child: Container(
                                            height: height*.085,
                                            child: TextField(
                                              autofocus: false,
                                              maxLines: 2,
                                              textDirection: TextDirection.ltr,
                                              decoration: InputDecoration(
                                                  labelText: "Address",
                                                  labelStyle: TextStyle(
                                                      color: greyTextColor),
                                                  suffixIcon: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12.0),
                                                      child: Icon(
                                                        Icons.location_on,
                                                        color: greyIconColor,
                                                      )),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color: new Color(
                                                            0x3D707070)),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color: new Color(
                                                            0x3D707070)),
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 32.0, right: 32.0, top: 12.0),
                                          child: Hero(
                                            tag: "tag_SignInBtn",
                                            child: Container(
                                              height: height*.062,
                                              child: MaterialButton(
                                                  padding: EdgeInsets.only(
                                                      top: 8.0, bottom: 8.0),
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Signup2()));
                                                  },
                                                  color: themeColor,
                                                  elevation: 4.0,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Container(
                                                          margin: EdgeInsets.only(left: width*0.33),
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text("Next",
                                                            style: GoogleFonts
                                                                .poppins(
                                                              textStyle: TextStyle(
                                                                  fontSize: 17.0,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800),
                                                            )),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(right: width*.015),
                                                        child: InkWell(
                                                            onTap: () {
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              Signup2()));
                                                            },
                                                            child:
                                                                SvgPicture.asset(
                                                              circularArrowIcon,
                                                              fit: BoxFit
                                                                  .fitHeight,
                                                            )),
                                                      )
                                                    ],
                                                  ),
                                                  minWidth: width,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8.0)))),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 16.0),
                                          child: Hero(
                                            tag: "tag_SignupText",
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: RichText(
                                                text: TextSpan(
                                                    text:
                                                        "Already have an account?",
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 14.0,
                                                          color: greyTextColor,
                                                          fontWeight:
                                                              FontWeight.normal),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: " Sign in",
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap = () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder:
                                                                              (context) =>
                                                                                  Login()));
                                                                },
                                                          style:
                                                              GoogleFonts.poppins(
                                                            textStyle: TextStyle(
                                                                fontSize: 15.0,
                                                                color:
                                                                    greyTextColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
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
