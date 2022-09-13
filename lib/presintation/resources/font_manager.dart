import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jawwal_tickets/presintation/resources/values_manager.dart';

class FontConstant {
  static const String fontFamily = "Montserrat";
}

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w300;
  static const FontWeight bold = FontWeight.w700;
}

class FontSize{
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s17 = 17.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s22 = 22.0;
}

getAppBarTitleFontStyle(){
  return GoogleFonts.cairo(
    fontWeight: FontWeight.bold,
    fontSize: AppSize.s22,
    color: Colors.black,
  );
}