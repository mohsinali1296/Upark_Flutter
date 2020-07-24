import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/utils/bottomsheet.dart';

import 'color.dart';
import 'dialogue_helper.dart';
import 'dropdownmenu.dart';
import 'icons.dart';


class BottomSheet_Helper{
  static openParkingDetails_BottomSheet(context)=> showModalBottomSheet(context: context,builder: (context)=>ParkingDetails_BottomSheet());
}

