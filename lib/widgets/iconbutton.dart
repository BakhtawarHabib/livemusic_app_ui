import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class IconBtn extends StatelessWidget {
  String txt;
  VoidCallback onpress;
  double height;
  double width;
  String image;
  IconBtn(
      {required this.txt,
      required this.onpress,
      required this.height,
      required this.image,
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
            SvgPicture.asset(
              image,
            ),
            Text(
              txt,
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
