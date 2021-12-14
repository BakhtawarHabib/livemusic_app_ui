import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/search/searchscreen.dart';

class CustomTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  CustomTextField({required this.containericon, required this.hinttext});

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
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 16),
                        hintText: hinttext,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(containericon),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

class EmailNotChangeCustomTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  EmailNotChangeCustomTextField(
      {required this.containericon, required this.hinttext});

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
                    readOnly: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 16),
                        hintText: hinttext,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffE5E5E5),
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(containericon),
            ),
            decoration: BoxDecoration(
                color: const Color(0xffE5E5E5),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => SearchScreen());
      },
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(color: btnColor, width: 2)),
        child: TextFormField(
          readOnly: true,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search artist, musician, bands',
              filled: true,
              fillColor: Colors.grey[200]),
        ),
      ),
    );
  }
}

class CustomBookingTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  CustomBookingTextField({required this.containericon, required this.hinttext});

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
                        hintStyle: hint16style,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(6)),
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

class PriceNotChangeTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  PriceNotChangeTextField(
      {required this.containericon, required this.hinttext});

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
                    readOnly: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        hintStyle: hint16style,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 16),
                        hintText: hinttext,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffE5E5E5),
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SvgPicture.asset(containericon),
            ),
            decoration: const BoxDecoration(
              color: Color(0xffE5E5E5),
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

class AboutTextField extends StatelessWidget {
  const AboutTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              constraints: const BoxConstraints(
                maxHeight: double.infinity,
              ),
              // First child (child 1)
              width: double.infinity,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    maxLines: 8,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 30),
                        hintText: abouttext,
                        hintStyle: black16normalstyle,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SvgPicture.asset(
                "images/cakeicon.svg",
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

class ReviewTextField extends StatelessWidget {
  const ReviewTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              constraints: const BoxConstraints(
                maxHeight: double.infinity,
              ),
              // First child (child 1)
              width: double.infinity,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    maxLines: 4,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 20),
                        hintText: "Write review here...",
                        hintStyle: reviewhinttextstyle,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(
                "images/profilepic.png",
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
