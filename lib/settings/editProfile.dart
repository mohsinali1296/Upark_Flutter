import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/dialogue_helper.dart';
import 'package:upark/utils/icons.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                    child: Text("Edit Profile",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w600,color: darkGreyTextColor),)),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(4.0),
                margin: EdgeInsets.only(top:16.0,left: 16.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Personal Details",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                      fontSize: 18.0,
                      color: blueTextColor,
                      fontWeight:
                      FontWeight.w600
                  ),

                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0),
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
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
                        labelText: "First Name",
                        hintText: "Enter your first name",
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
                    //controller: textController,
                    //onChanged: (text)=>,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0),
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
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
                        labelText: "Last Name",
                        hintText: "Enter your last name",
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
                    //controller: textController,
                    //onChanged: (text)=>,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0),
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
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
                    maxLength: 11,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Phone Number",
                        hintText: "XXXXXXXXXXX",
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
                    //controller: textController,
                    //onChanged: (text)=>,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0),
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
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
                        labelText: "Email Address",
                        hintText: "Enter your Email Address",
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
                    //controller: textController,
                    //onChanged: (text)=>,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0),
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
                child: Material(
                  color: Colors.white,
                  child: TextField(
                    autofocus: false,
                    maxLines: 4,
                    textDirection: TextDirection.ltr,
                    onChanged: (value){
                      setState(() {

                      });
                    },
                    decoration: InputDecoration(
                        labelText: "Address",
                        hintText: "Enter your address",
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
                    //controller: textController,
                    //onChanged: (text)=>,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4.0),
                margin: EdgeInsets.only(top:16.0,left: 16.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Vehicle Details",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                      fontSize: 18.0,
                      color: blueTextColor,
                      fontWeight:
                      FontWeight.w600
                  ),

                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0),
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
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
                        labelText: "Vehicle Type",
                        hintText: "Enter your Vehicle Type",
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
                    //controller: textController,
                    //onChanged: (text)=>,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0),
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
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
                        labelText: "Vehicle Make",
                        hintText: "Enter your Vehicle Make",
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
                    //controller: textController,
                    //onChanged: (text)=>,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0),
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
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
                        labelText: "Vehicle Model",
                        hintText: "Enter your Vehicle Model",
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
                    //controller: textController,
                    //onChanged: (text)=>,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0),
                margin: EdgeInsets.only(left: 26.0,right: 12.0),
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 120.0,
                  height: 120,
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
              ),
              Container(
                padding: const EdgeInsets.only(top:4.0,left: 32.0,right: 32.0),
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width*.5,
                margin: EdgeInsets.only(left:12,right:MediaQuery.of(context).size.width*.5),
                child: MaterialButton(
                    padding: EdgeInsets.only(
                        top: 12.0, bottom: 12.0,left: 16.0,right: 16.0),
                    onPressed: () {
                      getImage;
                    },
                    color: themeColor,
                    elevation: 4.0,
                    child: Container(
                      //margin: EdgeInsets.only(left: 120.0),
                      alignment: Alignment.center,
                      child: Text("Profile Image",
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight:
                                FontWeight.w800),
                          )),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(8.0)))),
              ),
              SizedBox(height: 20.0,)
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*.09,
          child: Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 16.0,right: 16.0),
            child: MaterialButton(
                padding: EdgeInsets.only(
                    top: 4.0, bottom: 4.0,left: 16.0,right: 16.0),
                onPressed: () {
                        DialogueHelper.openOKDialogueBox2(context);

                },
                color: themeColor,
                elevation: 4.0,
                child: Container(
                  //margin: EdgeInsets.only(left: 120.0),
                  alignment: Alignment.center,
                  child: Text("UPDATE",
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
      ),
    );
  }
}
