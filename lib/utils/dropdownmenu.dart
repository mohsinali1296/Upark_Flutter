import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/dialogue_helper.dart';


class ParkingMenu{
  final int id;
  final Widget widget;

  ParkingMenu(this.id,this.widget, );

  static List<ParkingMenu> parkingMenu_List(){
    return <ParkingMenu>[
      ParkingMenu(1,Row(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
        Icon(Icons.edit,color: themeColor,size: 15.0,),
        Padding(
          padding: const EdgeInsets.only(left: 3.0),
          child: Text("Edit",style: GoogleFonts.rubik(color: darkGreyTextColor,fontWeight: FontWeight.normal,fontSize: 13,),),
        ),
      ],)),
      ParkingMenu(2,Row(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
        Icon(Icons.delete,color: themeColor,size: 15.0,),
        Padding(
          padding: const EdgeInsets.only(left: 3.0),
          child: Text("Delete",style: GoogleFonts.rubik(color: darkGreyTextColor,fontWeight: FontWeight.normal,fontSize: 13,),),
        ),
      ],)),
    ];
  }

}