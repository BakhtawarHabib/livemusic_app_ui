import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class CustomTextFieldSuffixIcon extends StatelessWidget {
  String hinttext;
  String containericon;
  Widget suffixwidget;
  CustomTextFieldSuffixIcon(
      {required this.containericon,
      required this.hinttext,
      required this.suffixwidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              // First child (child 1)
              width: double.infinity,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        suffixIcon: suffixwidget,
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 16),
                        hintText: hinttext,
                        hintStyle: black16normalstyle,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SvgPicture.asset(containericon),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: hintcolor,
                  blurRadius: 0.4, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    0.0, // vertical, move down 10
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomUserTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  CustomUserTextField({required this.containericon, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              // First child (child 1)
              width: double.infinity,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 16),
                        hintText: hinttext,
                        hintStyle: black16normalstyle,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SvgPicture.asset(
                containericon,
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: hintcolor,
                  blurRadius: 0.4, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    0.0, // vertical, move down 10
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSmallTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  CustomSmallTextField({required this.containericon, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              // First child (child 1)
              width: 170.w,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 16),
                        hintText: hinttext,
                        hintStyle: black16normalstyle,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SvgPicture.asset(containericon),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: hintcolor,
                  blurRadius: 0.4, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    0.0, // vertical, move down 10
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
