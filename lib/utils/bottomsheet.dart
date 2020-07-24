import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/utils/bottomsheet_helper.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/dialogue_helper.dart';

import 'dropdownmenu.dart';
import 'icons.dart';

class ParkingDetails_BottomSheet extends StatelessWidget {
  String _details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.Et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exershksj citation ullamco laborasis nisi ut alzaiquip ex ea commodo consequat. Duis assaute irure dolor in reprehenderit in voluptate velit essce cilluam dolaore esdu fugiat nxulla pariatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0))),
      child: Container(
          padding:
          EdgeInsets.only(top: 10.0, left: 24.0, right: 24.0, bottom: 16.0),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 5.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          color: greyIconColor,
                          borderRadius:
                          BorderRadius.all(Radius.circular(12.0))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ListTile(
                      leading: SvgPicture.asset(greyParkingIcon),
                      title: Text(
                        "Parking Available",
                        style: GoogleFonts.rubik(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: blueTextColor,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.directions_car,
                                size: 15.0,
                                color: blueTextColor,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "Available in 20 mints",
                                  style: GoogleFonts.rubik(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                    color: blueTextColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.near_me,
                                size: 15.0,
                                color: blueTextColor,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "200 m",
                                  style: GoogleFonts.rubik(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                    color: blueTextColor,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      trailing: DropdownButton(
                        dropdownColor: Colors.white,
                        onChanged: (ParkingMenu menu){
                          if(menu.id==1){

                          }else{

                          }
                        },
                        underline: SizedBox(),
                        items: ParkingMenu.parkingMenu_List().map<DropdownMenuItem<ParkingMenu>>((menu) => DropdownMenuItem(
                          value: menu,
                          child: Container(color: Colors.white,child: menu.widget),
                        )).toList(),
                        icon: Icon(Icons.more_vert,
                          color: themeColor,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        _details,
                        style: GoogleFonts.rubik(
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                          color: greyTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  height: 70.0,
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    //padding: EdgeInsets.all(16.0),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: themeColor,
                      elevation: 4.0,
                      child: Container(
                        //margin: EdgeInsets.only(left: 120.0),
                        alignment: Alignment.center,
                        child: Text("CLOSE",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            )),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(8.0)))),
                ),
              )

            ],
          )),
    );
  }
}
