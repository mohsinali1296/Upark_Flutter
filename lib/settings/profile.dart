import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/settings/editProfile.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/images.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
                    child: Text("My Profile",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w600,color: darkGreyTextColor),)),
              ],
            ),
          ),
        ),
        body: Container(
          height: height,
          width: width,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .12),
                    child: AvatarGlow(
                      //startDelay: Duration(microseconds: 1000),
                      glowColor: themeColor,
                      duration: Duration(milliseconds: 2000),
                      repeat: true,
                      showTwoGlows: true,
                      repeatPauseDuration: Duration(milliseconds: 100),
                      endRadius: 120.0,
                      child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        color: Colors.transparent,
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundColor: Colors.white,
                          //backgroundImage: NetworkImage("https://simg.nicepng.com/png/small/377-3778780_helper4u-maid-bai-cook-chef-empty-profile-picture.png"),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://simg.nicepng.com/png/small/377-3778780_helper4u-maid-bai-cook-chef-empty-profile-picture.png"),
                                  fit: BoxFit.fill
                                )
                            ),
//                            child: Image.network("https://simg.nicepng.com/png/small/377-3778780_helper4u-maid-bai-cook-chef-empty-profile-picture.png",
//                              height: 100,),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height*.001,
                  ),
                  Container(
                    //padding: EdgeInsets.all(4.0),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          margin:
                              EdgeInsets.only(top: 8.0, left: 16.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.mail,
                                color: greyIconColor,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 4.0, right: 4.0),
                                  child: Text(
                                    "janedoe@gmail.com",
                                    style: GoogleFonts.rubik(
                                        color: greyTextColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 8.0, left: 16.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.phone_iphone,
                                color: greyIconColor,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 4.0, right: 4.0),
                                  child: Text(
                                    "000-0001-12345",
                                    style: GoogleFonts.rubik(
                                        color: greyTextColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 8.0,
                            left: 16.0,

                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: greyIconColor,
                              ),
                              Expanded(
                                child: Container(
                                  margin:
                                      EdgeInsets.only(left: 4.0, bottom: 12.0),
                                  height: 30.0,
                                  child: Text(
                                    "Address Lorem ipsum dolor sitamet, ajbah hia consectetur adipis",
                                    style: GoogleFonts.rubik(
                                        color: greyTextColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

              Container(
                margin: EdgeInsets.only(left: width*0.04, right:width*0.04,top: height*0.03),
                child: Card(
                  elevation: 1.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        padding: EdgeInsets.only(left: 2.0, right: 2.0),
                        margin: EdgeInsets.only(left: width*0.04),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(carImage), fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: width*0.03),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Car Details",
                                    style: GoogleFonts.rubik(
                                        color: darkGreyTextColor,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: width*0.03),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Audi A5",
                                    style: GoogleFonts.rubik(
                                        color: greyTextColor,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: width*0.03),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "2009",
                                    style: GoogleFonts.rubik(
                                        color: greyTextColor,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height*.085,
                  padding: const EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(top:height*.08),
                  child: MaterialButton(
                      //padding: EdgeInsets.all(16.0),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context)=>EditProfile()
                        ));
                      },
                      color: themeColor,
                      elevation: 4.0,
                      child: Container(
                        //margin: EdgeInsets.only(left: 120.0),
                        alignment: Alignment.center,
                        child: Text("Edit Profile",
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
    );
  }
}


