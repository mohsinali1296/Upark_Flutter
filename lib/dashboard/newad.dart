import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/settings/editProfile.dart';
import 'package:upark/utils/bottomsheet_helper.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/icons.dart';
import 'package:upark/utils/images.dart';

class NewAd extends StatefulWidget {
  @override
  _NewAdState createState() => _NewAdState();
}

class _NewAdState extends State<NewAd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            padding: EdgeInsets.only(top: 8.0,bottom: 8.0),
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
                    child: Text("New Ad",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w600,color: darkGreyTextColor),)),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 8.0),
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 8.0),
                  padding: EdgeInsets.only(top:8.0,bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 5.0,height: 30.0,child: Container(color: themeColor,),),
                      Container(margin: EdgeInsets.only(left: 16.0),child: Text("General Detail",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w500,color: blueTextColor),))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 16.0),
                  //margin: EdgeInsets.only(left: 12.0,right: 12.0),
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
                          labelText: "Title",
                          hintText: "Enter Title",
                          labelStyle: TextStyle(
                              color: greyTextColor),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color:
                                new Color(0x3D707070)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(12.0)),
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
                      left: 8.0, right: 8.0, top: 16.0),
                  //margin: EdgeInsets.only(left: 12.0,right: 12.0),
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
                          labelText: "Address",
                          hintText: "Enter Address",
                          labelStyle: TextStyle(
                              color: greyTextColor),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.location_on,color: greyIconColor,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color:
                                new Color(0x3D707070)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(12.0)),
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
                      left: 8.0, right: 8.0, top: 16.0),
                  //margin: EdgeInsets.only(left: 12.0,right: 12.0),
                  child: Material(
                    color: Colors.white,
                    child: TextField(
                      autofocus: false,
                      maxLines: 5,
                      maxLengthEnforced: false,
                      textDirection: TextDirection.ltr,
                      onChanged: (value){
                        setState(() {

                        });
                      },
                      decoration: InputDecoration(
                          labelText: "Details",
                          hintText: "Enter Details",
                          labelStyle: TextStyle(
                              color: greyTextColor),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color:
                                new Color(0x3D707070)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(12.0)),
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
                  margin: EdgeInsets.only(left: 8.0,top:16.0),
                  padding: EdgeInsets.only(top:8.0,bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 5.0,height: 30.0,child: Container(color: themeColor,),),
                      Container(margin: EdgeInsets.only(left: 16.0),child: Text("Duration to Leave",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w500,color: blueTextColor),))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:8.0),
                  child: DefaultTabController(
                    length: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 8.0, right: 8.0),
                      child: TabBar(
                        unselectedLabelColor: blueTextColor,
                        labelColor: Colors.white,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: themeColor),
                        tabs: <Widget>[
                          Tab(
                            text: "5 min",
                          ),
                          Tab(
                            text: "15 min",
                          ),
                          Tab(
                            text: "30 min",
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 120,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 70.0,
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      //padding: EdgeInsets.all(16.0),
                        onPressed: () {
                          //BottomSheet_Helper.openParkingDetails_BottomSheet(context);
                        },
                        color: themeColor,
                        elevation: 4.0,
                        child: Container(
                          //margin: EdgeInsets.only(left: 120.0),
                          alignment: Alignment.center,
                          child: Text("Proceed",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 18.0,
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
      ),
    );
  }
}
