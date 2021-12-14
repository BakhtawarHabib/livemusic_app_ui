import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

import 'package:livemusic_app_ui/makeprofile/makeprofilescreen.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';

class EmailVerifyScreen extends StatefulWidget {
  const EmailVerifyScreen({Key? key}) : super(key: key);

  @override
  _EmailVerifyScreenState createState() => _EmailVerifyScreenState();
}

class _EmailVerifyScreenState extends State<EmailVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xff777777), Color(0xff232322)],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackArrow(),
                  Text(
                    "Confirm Your email!",
                    style: white16stylemedium,
                  ),
                  const Icon(
                    Icons.mail,
                    color: whitecolor,
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Inbox",
                    style: white19textStyle,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "to me",
                        style: white10textStyle,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      SvgPicture.asset("images/downarrow.svg")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: whitecolor, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset("images/logo2.svg"),
                        Text(
                          "Confirm Your email!",
                          style: black16mediumtextstyle,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                      ],
                    ),
                    Text(
                      verifydescription,
                      style: GoogleFonts.lato(fontSize: 16),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomBtn(
                        txt: "Verify my Email",
                        onpress: () {
                          Get.to(() => const MakeProfileScreen());
                        },
                        height: 40.h,
                        width: 172.w),
                    SizedBox(
                      height: 10.h,
                    ),
                    UseAppBtn(
                        txt: 'Use App',
                        height: 40.h,
                        width: 172.w,
                        onpress: () {}),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
