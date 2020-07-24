import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/dashboard/dashboard.dart';

import 'color.dart';
import 'dialogue_helper.dart';
import 'icons.dart';

class LocationAccessDailogue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4.0,
      backgroundColor: Colors.transparent,
      child: _builderChild(context,width,height),
    );
  }

  _builderChild(BuildContext context, var width, var height) => Container(
        width: width,
        height: height*.27,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Hero(
                tag: "tag_DialogueAppLogo",
                child: Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: SvgPicture.asset(
                    appLogo2,
                    width: width*.15,
                    height: height*.058,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Hero(
                tag: "tab_DialogueTitle",
                child: Container(
                  margin: EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Upark would like to Access your Location",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      color: darkGreyTextColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height*.0001,
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Container(
                        width: width*.33,
                        height: height*.057,
                        child: RaisedButton(
                          elevation: 4.0,
                          color: new Color(0xFFAFAFAF),
                          child: Text(
                            "Don't ALLOW",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Hero(
                        tag: "tag_DialogueBtn",
                        child: Container(
                          width: width*.33,
                          height: height*.057,
                          child: RaisedButton(
                            elevation: 4.0,
                            color: themeColor,
                            child: Text(
                              "ALLOW",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            onPressed: () {
                              Navigator.of(context).pop();
                              DialogueHelper.openRoleDialogueBox(context);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}

class RoleDialogueBox extends StatefulWidget {
  @override
  _RoleDialogueBoxState createState() => _RoleDialogueBoxState();
}

class _RoleDialogueBoxState extends State<RoleDialogueBox> {
  var group = 1;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4.0,
      backgroundColor: Colors.transparent,
      child: _builderChild(context,width,height),
    );
  }

  _builderChild(BuildContext context,var width,var height) => Container(
        width: width,
        height: height*.335,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Hero(
                tag: "tag_DialogueAppLogo",
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: SvgPicture.asset(
                    appLogo2,
                      width: width*.15,
                      height: height*.058
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Hero(
                tag: "tab_DialogueTitle",
                child: Container(
                  margin: EdgeInsets.only(top: 4.0),
                  child: Text(
                    "Select Role",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      color: darkGreyTextColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: height*.11,
                    width: width*.32,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          bottomLeft: Radius.circular(16.0),
                        ),
                        border: Border(
                            top: BorderSide(
                                width: 1.0, color: greyBorderColor),
                            bottom: BorderSide(
                                width: 1.0, color: greyBorderColor),
                            left: BorderSide(
                                width: 1.0, color: greyBorderColor),
                            right: BorderSide(
                                width: 1.0, color: greyBorderColor))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top:2.5),
                          child: SvgPicture.asset(
                            seekericon,
                            width: width*.05,
                            height: height*0.043,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              "Seeker",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: greyTextColor),
                            ),
                            Radio(
                              value: 1,
                              groupValue: group,
                              activeColor: themeColor,
                              onChanged: (T) {
                                setState(() {
                                  group = T;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: height*.11,
                    width: width*.32,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          bottomLeft: Radius.circular(16.0),
                        ),
                        border: Border(
                            top: BorderSide(
                                width: 1.0, color: greyBorderColor),
                            bottom: BorderSide(
                                width: 1.0, color: greyBorderColor),
                            left: BorderSide(
                                width: 1.0, color: greyBorderColor),
                            right: BorderSide(
                                width: 1.0, color: greyBorderColor))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top:2.5),
                          child: SvgPicture.asset(
                            providericon,
                            width: width*.05,
                            height: height*0.043,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              "Provider",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: greyTextColor),
                            ),
                            Radio(
                              value: 2,
                              groupValue: group,
                              activeColor: themeColor,
                              onChanged: (T) {
                                setState(() {
                                  group = T;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Hero(
                tag: "tag_DialogueBtn",
                child: Container(
                  width: width*.5,
                  height: height*.055,
                  margin: EdgeInsets.only(top: 8.0),
                  child: RaisedButton(
                    elevation: 4.0,
                    color: themeColor,
                    child: Text(
                      "PROCEED",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    onPressed: () {
                      if(group==1){
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context)=>DashBoard()
                        ));
                      }else{
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context)=>Dashboard2()
                        ));
                      }


                    },
                  ),
                ),
              ),
            )
          ],
        ),
      );
}

class ForgetPasswordDialogueBox extends StatefulWidget {
  @override
  _ForgetPasswordDialogueBoxState createState() => _ForgetPasswordDialogueBoxState();
}

class _ForgetPasswordDialogueBoxState extends State<ForgetPasswordDialogueBox> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4.0,
      backgroundColor: Colors.transparent,
      child: _builderChild(context,width,height),
    );
  }
  _builderChild(BuildContext context,var width,var height) => Container(
    width: width,
    height: height*.36,
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
        )),
    child: Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top:16.0),
            child: Hero(
              tag: "tab_ForgetPassword_Text",
              child: Text(
                "Forgot Password",
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                    fontSize: 16.0,
                    color: greyTextColor,
                    fontWeight:
                    FontWeight.bold
                ),

              )
            ),
          ),
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top:4.0),
            child: Text(
              "Enter Your Email Address",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                  fontSize: 16.0,
                  color: greyTextColor,
                  fontWeight:
                  FontWeight.bold
              ),

            ),
          ),
          Container(
            padding: EdgeInsets.only(top:4.0,left: 16.0,right: 16.0,bottom: 4.0),
            margin: EdgeInsets.only(top:2.0),
            child: Text(
              "Password change link will be send to your email address.",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.rubik(
                  fontSize: 14.0,
                  color: greyTextColor,
                  fontWeight:
                  FontWeight.normal
              ),

            ),
          ),
          Container(
            height: height*.073,
            padding: EdgeInsets.only(
                left: 8.0, right: 8.0, top: 8.0),
            child: Hero(
              tag: "tag_EmailTextfield",
              child: Material(
                color: Colors.white,
                child: TextField(
                  autofocus: false,
                  maxLines: 1,
                  textDirection: TextDirection.ltr,
                  onChanged: (value){
                    setState(() {
                    });
                  },
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter Email",
                      labelStyle: TextStyle(
                          color: greyTextColor),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: greyIconColor,
                      ),
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
                  //controller: textController,
                  //onChanged: (text)=>,
                ),
              ),
            ),
          ),
          Hero(
            tag: "tag_SignInBtn",
            child: Padding(
              padding: const EdgeInsets.only(top:16.0,left: 32.0,right: 32.0),
              child: MaterialButton(
                  padding: EdgeInsets.only(
                      top: 12.0, bottom: 12.0,left: 32.0,right: 32.0),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: themeColor,
                  elevation: 4.0,
                  child: Container(
                    //margin: EdgeInsets.only(left: 120.0),
                    alignment: Alignment.center,
                    child: Text("CONTINUE",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 17.0,
                              color: Colors.white,
                              fontWeight:
                              FontWeight.w800),
                        )),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(8.0)))),
            ),
          ),
        ],
      ),
    ),
  );
}

class ChangePasswordDialogue extends StatefulWidget {
  @override
  _ChangePasswordDialogueState createState() => _ChangePasswordDialogueState();
}

class _ChangePasswordDialogueState extends State<ChangePasswordDialogue> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4.0,
      backgroundColor: Colors.transparent,
      child: _builderChild(context,width,height),
    );
  }
  _builderChild(BuildContext context,var width,var height) => Container(
    width: width,
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
        )),
    child: Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top:16.0),
            child: Text(
              "Change Password",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                  fontSize: 16.0,
                  color: greyTextColor,
                  fontWeight:
                  FontWeight.bold
              ),

            ),
          ),
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top:4.0),
            child: Text(
              "Enter Your Old Password and New Password",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                  fontSize: 16.0,
                  color: greyTextColor,
                  fontWeight:
                  FontWeight.normal
              ),

            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 8.0, right: 8.0, top: 8.0),
            child: Material(
              color: Colors.white,
              child: TextField(
                obscureText: false,
                autofocus: false,
                maxLines: 1,
                textDirection: TextDirection.ltr,
                onChanged: (value){
                  setState(() {
                  });
                },
                decoration: InputDecoration(
                    labelText: "Old Password",
                    hintText: "Enter Old Password",
                    labelStyle: TextStyle(
                        color: greyTextColor),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(keyIcon,fit: BoxFit.contain),
                    ),
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
                //controller: textController,
                //onChanged: (text)=>,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 8.0, right: 8.0, top: 8.0),
            child: Material(
              color: Colors.white,
              child: TextField(
                obscureText: false,
                autofocus: false,
                maxLines: 1,
                textDirection: TextDirection.ltr,
                onChanged: (value){
                  setState(() {
                  });
                },
                decoration: InputDecoration(
                    labelText: "New Password",
                    hintText: "Enter New Password",
                    labelStyle: TextStyle(
                        color: greyTextColor),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(keyIcon,fit: BoxFit.contain),
                    ),
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
                //controller: textController,
                //onChanged: (text)=>,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 8.0, right: 8.0, top: 8.0),
            child: Material(
              color: Colors.white,
              child: TextField(
                obscureText: false,
                autofocus: false,
                maxLines: 1,
                textDirection: TextDirection.ltr,
                onChanged: (value){
                  setState(() {
                  });
                },
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "Enter Confirm Password",
                    labelStyle: TextStyle(
                        color: greyTextColor),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(keyIcon,fit: BoxFit.contain),
                    ),
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
                //controller: textController,
                //onChanged: (text)=>,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:16.0,left: 32.0,right: 32.0),
            child: MaterialButton(
                padding: EdgeInsets.only(
                    top: 12.0, bottom: 12.0,left: 32.0,right: 32.0),
                onPressed: () {
                  Navigator.pop(context);
                  DialogueHelper.openOKDialogueBox(context);
                },
                color: themeColor,
                elevation: 4.0,
                child: Container(
                  //margin: EdgeInsets.only(left: 120.0),
                  alignment: Alignment.center,
                  child: Text("CONTINUE",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                            fontWeight:
                            FontWeight.w800),
                      )),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)))),
          ),
        ],
      ),
    ),
  );
}

class OkDialogue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4.0,
      backgroundColor: Colors.transparent,
      child: _builderChild(context),
    );
  }
  _builderChild(BuildContext context) => Container(
    width: 320.0,
    height: 230.0,
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        )),
    child: Padding(
      padding: EdgeInsets.only(top:16.0,bottom: 16.0,left: 16.0,right: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
            SvgPicture.asset(okIcon),
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top:6.0),
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                  fontSize: 20.0,
                  color: darkGreyTextColor,
                  fontWeight:
                  FontWeight.w500
              ),

            ),
          ),
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top:6.0),
            child: Text(
              "You successfully changed your password",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                  fontSize: 16.0,
                  color: greyTextColor,
                  fontWeight:
                  FontWeight.normal
              ),

            ),
          ),
        ],
      ),
    ),
  );
}

class OkDialogue2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4.0,
      backgroundColor: Colors.transparent,
      child: _builderChild(context),
    );
  }
  _builderChild(BuildContext context) => Container(
    width: 320.0,
    height: 230.0,
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        )),
    child: Padding(
      padding: EdgeInsets.only(top:16.0,bottom: 16.0,left: 16.0,right: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset(okIcon),
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top:6.0),
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                  fontSize: 20.0,
                  color: darkGreyTextColor,
                  fontWeight:
                  FontWeight.w500
              ),

            ),
          ),
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top:6.0),
            child: Text(
              "Your Profile has been updated Successfully.",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                  fontSize: 16.0,
                  color: greyTextColor,
                  fontWeight:
                  FontWeight.normal
              ),

            ),
          ),
        ],
      ),
    ),
  );
}

class OkDialogue3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4.0,
      backgroundColor: Colors.transparent,
      child: _builderChild(context),
    );
  }
  _builderChild(BuildContext context) => Container(
    width: 320.0,
    height: 230.0,
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        )),
    child: Padding(
      padding: EdgeInsets.only(top:16.0,bottom: 16.0,left: 16.0,right: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset(okIcon),
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top:6.0),
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                  fontSize: 20.0,
                  color: darkGreyTextColor,
                  fontWeight:
                  FontWeight.w500
              ),

            ),
          ),
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top:6.0),
            child: Text(
              "Your Query has been sent Successfully.",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                  fontSize: 16.0,
                  color: greyTextColor,
                  fontWeight:
                  FontWeight.normal
              ),

            ),
          ),
        ],
      ),
    ),
  );
}
