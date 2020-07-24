import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:polygon_clipper/polygon_border.dart';
import 'package:upark/dashboard/newad.dart';
import 'package:upark/utils/color.dart';
import 'dart:async';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'package:upark/utils/icons.dart';

import 'notification.dart';

class SeekerHomeScreen extends StatefulWidget {
  @override
  _SeekerHomeScreenState createState() => _SeekerHomeScreenState();
}

class _SeekerHomeScreenState extends State<SeekerHomeScreen> {

//  Geolocator geolocator = Geolocator();
//
//  Position userLocation;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    _getLocation().then((position) {
//      userLocation = position;
//    });
//  }
//
//  Future<Position> _getLocation() async {
//    var currentLocation;
//    try {
//      currentLocation = await geolocator.getCurrentPosition(
//          desiredAccuracy: LocationAccuracy.best);
//    } catch (e) {
//      currentLocation = null;
//    }
//    return currentLocation;
//  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(24.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 2.0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 24.0),
                    child: Text("Home",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w600,color: greyTextColor),)),
                Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.24),
                    padding: EdgeInsets.all(6.0),
                    child: SvgPicture.asset(appLogo2)
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}



class ProviderHomeScreen extends StatefulWidget {
  @override
  _ProviderHomeScreenState createState() => _ProviderHomeScreenState();
}

class _ProviderHomeScreenState extends State<ProviderHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(24.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 2.0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 24.0),
                    child: Text("Home",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w600,color: greyTextColor),)),
                Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.24),
                    padding: EdgeInsets.all(6.0),
                    child: SvgPicture.asset(appLogo2)
                ),
                Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.30),
                    padding: EdgeInsets.all(6.0),
                    child: InkWell(child: SvgPicture.asset(notificationIcon,height: 24.0,width: 24.0,),onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder:(context)=>Notifications()));
                    },)
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          height: 70.0,
          width: 70.0,
          child: FloatingActionButton(
            backgroundColor: themeColor,
            child: Icon(Icons.add,color: Colors.white,size: 35.0,),
            shape: PolygonBorder(
              sides: 6,
              borderRadius: 15.0,
              border: BorderSide.none
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder:(context)=>NewAd()
              ));
            },
          ),
        ) ,
      ),
    );
  }
}
