import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class CustomBtn extends StatelessWidget {
  String txt;
  VoidCallback onpress;
  double height;
  double width;
  CustomBtn(
      {required this.txt,
      required this.onpress,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: btnColor),
        child: Text(
          txt,
          style: white16stylemedium,
        ),
        height: height.h,
        width: width.w,
      ),
    );
  }
}

class UseAppBtn extends StatelessWidget {
  String txt;
  VoidCallback onpress;
  double height;
  double width;
  UseAppBtn(
      {required this.txt,
      required this.onpress,
      required this.height,
      required this.width});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: whitecolor,
            border: Border.all(color: btnColor)),
        child: Text(
          txt,
          style: black16mediumtextstyle,
        ),
        height: height.h,
        width: width.w,
      ),
    );
  }
}

class CustomIconBtn extends StatelessWidget {
  String txt;
  VoidCallback onpress;
  double height;
  double width;
  String icon;
  CustomIconBtn(
      {required this.txt,
      required this.icon,
      required this.onpress,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: btnColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(icon),
            Text(
              txt,
              style: white16stylemedium,
            ),
            Text(
              "",
              style: white16stylemedium,
            ),
          ],
        ),
        height: height.h,
        width: width.w,
      ),
    );
  }
}
