import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/models/onboardingSlides.dart';

import 'color.dart';


class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {

    var width  = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: SvgPicture.asset(slideList[index].imageUrl,fit: BoxFit.cover,height: height*.45,width: width,),
        ),
        Container(
          margin: EdgeInsets.only(top: 6.0),
          height: height*.06,
          width: width,
          child: Text(slideList[index].title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 16.0,
                    color: greyTextColor,
                    fontWeight:
                    FontWeight.bold),
              )),
        ),
        SizedBox(height: height*.005,),
        Container(
          height: height*.06,
          width: width,
          margin: EdgeInsets.only(top: 2.0),
          child: Text(slideList[index].title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 15.0,
                    color: greyTextColor,
                    fontWeight:
                    FontWeight.normal),
              )),
        ),
      ],
    );
  }
}
