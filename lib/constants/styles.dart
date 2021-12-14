// import 'package:crypto_ui/constants/colors.dart' as global;
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'screen_util.dart';

// final TextStyle textStyleOnboarding =
//     TextStyle(fontSize: 27.sp, fontFamily: 'Poppins');

// final TextStyle textStyleOnboarding2 =
//     TextStyle(fontSize: 14.sp, fontFamily: 'Poppins-Medium');

// final TextStyle textStyleAuthenticationTitle =
//     TextStyle(fontSize: 24.sp, fontFamily: 'Poppins', color: global.baseColor);

// final TextStyle textStyleAuthenticationText = TextStyle(
//     fontSize: 14.sp, fontFamily: 'Poppins-Regular', color: global.blackColor);

// final TextStyle btntextStyleLable = TextStyle(
//     fontSize: 14.sp, fontFamily: 'Roboto-Regular', color: global.whiteColor);

// final TextStyle textStyleForgotPassword = TextStyle(
//     fontSize: 15.sp,
//     fontFamily: 'Roboto-Regular',
//     color: global.forgotPasswordColor);

// final TextStyle textStyleAuthenticationButton = TextStyle(
//     fontSize: 14.sp, fontFamily: 'Roboto-Bold', color: global.whiteColor);

// final TextStyle textStyleAccount = TextStyle(
//     fontSize: 14.sp, fontFamily: 'Roboto-Regular', color: global.lableColor);

// final TextStyle textStyleRegisterLogin = TextStyle(
//     fontSize: 14.sp, fontFamily: 'Roboto-Regular', color: global.baseColor);

// final TextStyle textStyleAppbarTitle = TextStyle(
//     fontSize: 18.sp, fontFamily: 'Roboto-Bold', color: global.whiteColor);

// final TextStyle textStyleUserProfile = TextStyle(
//     fontSize: 13.sp,
//     fontFamily: 'Archivo',
//     fontWeight: FontWeight.bold,
//     color: global.profileNameColor);
// final TextStyle textStyleTimeStamp = TextStyle(
//     fontSize: 12.sp,
//     fontFamily: 'Archivo-Regular',
//     color: global.profileNameColor);

// final TextStyle textLikeCount = TextStyle(
//     fontSize: 11.sp,
//     fontFamily: 'Archivo-Regular',
//     color: global.profileNameColor);

// final TextStyle textImageCount = TextStyle(
//     fontSize: 11.sp, fontFamily: 'Archivo-Regular', color: global.whiteColor);

// final TextStyle textStyleProfileName = TextStyle(
//     fontSize: 30.sp, fontFamily: 'Archivo', color: global.profileNameColor);

// final TextStyle textStyleContributer = TextStyle(
//     fontSize: 13.sp, fontFamily: 'Archivo', color: global.forgotPasswordColor);

// final TextStyle textStylePofilePostCount = TextStyle(
//     fontSize: 26.sp,
//     fontFamily: 'Archivo',
//     color: global.profilePostCountColor);

// final TextStyle textStyleCount = TextStyle(
//     fontSize: 13.sp, fontFamily: 'Archivo-Regular', color: global.countColor);
// final TextStyle textStyleActivityPost = TextStyle(
//     fontSize: 13.sp, fontFamily: 'Poppins', color: global.profileActvityColor);

// final TextStyle textStyleAddLocation =
//     TextStyle(fontSize: 11.sp, fontFamily: 'Archivo', color: global.baseColor);

// final TextStyle textStyleDecsriptionText = TextStyle(
//     fontSize: 12.sp,
//     fontFamily: 'Poppins-Regular',
//     color: global.descriptionColor);
// final TextStyle amounttextstyle = TextStyle(
//     fontSize: 40.sp, color: global.whiteColor, fontWeight: FontWeight.bold);

final TextStyle tattologostyle = GoogleFonts.sairaStencilOne(
  fontSize: 40.sp,
  color: Colors.white,
);
final TextStyle tattologostyleblck = GoogleFonts.sairaStencilOne(
  fontSize: 40.sp,
  color: Colors.black,
);
final TextStyle blackbold14style = GoogleFonts.roboto(
    fontSize: 14.sp, color: Colors.black, fontWeight: FontWeight.bold);
final TextStyle normaltextStylefont = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: Colors.white,
);
final TextStyle black16mediumtextstyle = GoogleFonts.roboto(
  fontSize: 16.sp,
  color: Colors.black,
  fontWeight: FontWeight.w500,
);
final TextStyle red14normaltextstyle = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: btnColor,
);
final TextStyle black18mediumtextstyle = GoogleFonts.roboto(
  fontSize: 18.sp,
  color: Colors.black,
  fontWeight: FontWeight.w500,
);
final TextStyle grey18normaltextstyle = GoogleFonts.roboto(
  fontSize: 18.sp,
  color: Colors.black.withOpacity(0.3),
);
final TextStyle questionttxtstyle = GoogleFonts.roboto(
  fontSize: 20.sp,
  fontWeight: FontWeight.w500,
  color: btnColor,
);
final TextStyle normaltextStylefontblck = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: Colors.black,
);
final TextStyle hinttextStyle = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: hintcolor,
);
final TextStyle white10textStyle = GoogleFonts.roboto(
  fontSize: 10.sp,
  color: whitecolor,
);
final TextStyle timetextStyle = GoogleFonts.lato(
  fontSize: 10.sp,
  fontWeight: FontWeight.bold,
  color: Color(0xffBCC0C2),
);
final TextStyle black10textStyle = GoogleFonts.roboto(
  fontSize: 10.sp,
  color: Colors.black,
);
final TextStyle black10medium = GoogleFonts.roboto(
    fontSize: 10.sp, color: Colors.black, fontWeight: FontWeight.w500);
final TextStyle hint10textStyle = GoogleFonts.roboto(
  fontSize: 10.sp,
  color: Color(0xff919191),
);
final TextStyle black12textStyle = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: Colors.black,
);
final TextStyle white12textStyle = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: Colors.white,
);
final TextStyle black5textStyle = GoogleFonts.roboto(
  fontSize: 5.sp,
  color: Colors.black,
);
final TextStyle white19textStyle = GoogleFonts.roboto(
  fontSize: 19.sp,
  color: whitecolor,
);
final TextStyle jointxtstyle = GoogleFonts.roboto(
    fontSize: 14.sp,
    color: hintcolor,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.bold);
final TextStyle underlinetxtstyle = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: hintcolor,
  decoration: TextDecoration.underline,
);
final TextStyle white16stylemedium = GoogleFonts.roboto(
  fontSize: 16.sp,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);
final TextStyle white15normal = GoogleFonts.roboto(
  fontSize: 15.sp,
  color: Colors.white,
);
final TextStyle black15normal = GoogleFonts.roboto(
  fontSize: 15.sp,
  color: Colors.black,
);
final TextStyle white20stylemedium = GoogleFonts.roboto(
  fontSize: 20.sp,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);
final TextStyle white20bold = GoogleFonts.roboto(
  fontSize: 20.sp,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
final TextStyle white14stylemedium = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);
final TextStyle white13style = GoogleFonts.roboto(
  fontSize: 13.sp,
  color: Colors.white,
);
final TextStyle grey14style = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: greycolor,
);
final TextStyle white24mediumstyle = GoogleFonts.roboto(
  fontSize: 24.sp,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);
final TextStyle white22boldstyle = GoogleFonts.roboto(
  fontSize: 22.sp,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
final TextStyle smalltextStylefontblck = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: Colors.black,
);
final TextStyle white12fontnormal = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: Colors.white,
);
final TextStyle white12fontbold = GoogleFonts.roboto(
  fontSize: 12.sp,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
final TextStyle smalltextStylefontgrey = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: hintcolor,
);
final TextStyle black16normalstyle = GoogleFonts.roboto(
  fontSize: 16.sp,
  color: Colors.black,
);
final TextStyle reviewhinttextstyle = GoogleFonts.roboto(
    fontSize: 14.sp, color: Color(0xff737373), fontStyle: FontStyle.italic);
final TextStyle largesttextstyle = GoogleFonts.roboto(
  fontSize: 34.sp,
  color: btnColor,
  fontWeight: FontWeight.w500,
);
final TextStyle hintcolorbold = GoogleFonts.roboto(
    fontSize: 14.sp, color: hintcolor, fontWeight: FontWeight.bold);
final TextStyle hint16style = GoogleFonts.roboto(
  fontSize: 16.sp,
  color: Color(0xff919191),
);
final TextStyle hint11style = GoogleFonts.roboto(
  fontSize: 11.sp,
  color: Color(0xff919191),
);
final TextStyle adddebitsyleheading = GoogleFonts.roboto(
  fontSize: 14.sp,
  color: Color(0xffD5D5D5),
);
final TextStyle red10latoboldstyle = GoogleFonts.lato(
  fontSize: 10.sp,
  fontWeight: FontWeight.bold,
  color: btnColor,
);
final TextStyle red14latoboldstyle = GoogleFonts.lato(
  fontSize: 14.sp,
  fontWeight: FontWeight.bold,
  color: btnColor,
);
