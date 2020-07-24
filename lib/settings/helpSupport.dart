import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/dialogue_helper.dart';
import 'package:upark/utils/icons.dart';

class HelpAndSupport extends StatefulWidget {
  @override
  _HelpAndSupportState createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              //borderRadius: BorderRadius.only(bottomRight: Radius.circular(24.0)),
//              boxShadow: [
//                BoxShadow(
//                  color: Colors.grey,
//                  offset: Offset(0.0, 1.0), //(x,y)
//                  blurRadius: 2.0,
//                ),
//              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 8.0),
                    //padding: EdgeInsets.all(6.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: darkGreyTextColor,
                      ),
                    )
                ),
                Container(
                    margin: EdgeInsets.only(left: 8.0),

                    child: Text("Help & Support",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w600,color: darkGreyTextColor),)),
              ],
            ),
          ),
        ),
        body: Container(
          child: SafeArea(
            child: DefaultTabController(
              length: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 8.0, right: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(24.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    child: TabBar(
                      unselectedLabelColor: blueTextColor,
                      labelColor: blueTextColor,
                      indicatorColor: themeColor,

                      indicatorSize: TabBarIndicatorSize.label,
//                      indicator: BoxDecoration(
//                          borderRadius: BorderRadius.circular(5),
//                          color: new Color(0xFF54C571)),
                      tabs: <Widget>[
                        Tab(
                          text: "FAQ",
                        ),
                        Tab(
                          text: "Privacy Policy",
                        ),
                        Tab(
                          text: "Help Centre",
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        //Container(color: Colors.red,),
                        FAQ_Tab(),
                        PrivacyPolicy(),
                        HelpCentre()
                        //OrdersList(),
                        //OrdersList(),
                        //OrdersList(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FAQ_Tab extends StatefulWidget {
  @override
  _FAQ_TabState createState() => _FAQ_TabState();
}

class _FAQ_TabState extends State<FAQ_Tab> {
  static FAQ faQs = new FAQ(
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor ?",
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. Lorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua.");
  static FAQ faQs_1 = new FAQ(
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor ?",
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. Lorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua.");
  static FAQ faQs_2 = new FAQ(
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor ?",
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. Lorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua.");
  static FAQ faQs_3 = new FAQ(
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor ?",
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. Lorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua.");
  static FAQ faQs_4 = new FAQ(
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor ?",
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. Lorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua.");
  static FAQ faQs_5 = new FAQ(
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor ?",
      "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. Lorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua.");


  List<FAQ> faQsList = [faQs, faQs_1, faQs_2, faQs_3,faQs_4,faQs_5,faQs, faQs_1, faQs_2, faQs_3,faQs_4,faQs_5];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
        itemCount: faQsList.length,
        itemBuilder: (context,index){
        final item = faQsList[index];
        return FAQs(item.ques,item.ans);
        }
        ),
      ),
    );
  }
}


class FAQs extends StatelessWidget {
  var _ques, _ans;

  FAQs(this._ques, this._ans);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 4.0, bottom: 4.0, left: 16.0, right: 16.0),
      child: Card(
        color: Colors.white,
        elevation: 1.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: lightGreyColor,
              padding: EdgeInsets.all(8.0),
              child: Text(_ques, style: GoogleFonts.poppins(color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500),),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8.0),
              child: Text(_ans, style: GoogleFonts.poppins(
                  color: greyTextColor2,
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal),),
            ),
          ],
        ),
      ),
    );
  }
}


class FAQ {
  final String ques;
  final String ans;

  FAQ(this.ques, this.ans);
}


class PrivacyPolicy extends StatelessWidget {
  String policy1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
      margin: EdgeInsets.only(top:8.0),
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
    );
  }
}

class HelpCentre extends StatefulWidget {
  @override
  _HelpCentreState createState() => _HelpCentreState();
}

class _HelpCentreState extends State<HelpCentre> {
  String _title = "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor ?";
  String _subTitle = "Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. Lorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua.";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
      margin: EdgeInsets.only(top:8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 4.0, bottom: 4.0, left: 16.0, right: 16.0),
              child: Card(
                color: Colors.white,
                elevation: 1.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      color: lightGreyColor,
                      padding: EdgeInsets.all(8.0),
                      child: Text(_title, style: GoogleFonts.poppins(color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500),),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      child: Text(_subTitle, style: GoogleFonts.poppins(
                          color: greyTextColor2,
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                elevation: 1.0,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                            left: 4.0, right: 4.0, top: 8.0),

                        child: Material(
                          color: Colors.white,
                          child: TextField(
                            autofocus: false,
                            textDirection: TextDirection.ltr,
                            onChanged: (value){
                              setState(() {

                              });
                            },
                            decoration: InputDecoration(
                                labelText: "Your Email",
                                hintText: "Enter your Email",
                                labelStyle: TextStyle(
                                    color: greyTextColor),

                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(16.0)),
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
                      Container(
                        padding: EdgeInsets.only(
                            left: 4.0, right: 4.0, top: 16.0),
                        child: Material(
                          color: Colors.white,
                          child: TextField(
                            autofocus: false,
                            textDirection: TextDirection.ltr,
                            onChanged: (value){
                              setState(() {

                              });
                            },
                            maxLines: 10,
                            decoration: InputDecoration(
                                labelText: "Your Query",
                                hintText: "Enter your Query",
                                labelStyle: TextStyle(
                                    color: greyTextColor),

                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(16.0)),
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
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 70.0,
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                            //padding: EdgeInsets.all(16.0),
                              onPressed: () {
                                  DialogueHelper.openOKDialogueBox3(context);
                              },
                              color: themeColor,
                              elevation: 4.0,
                              child: Container(
                                //margin: EdgeInsets.only(left: 120.0),
                                alignment: Alignment.center,
                                child: Text("Send",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 17.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    )),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

