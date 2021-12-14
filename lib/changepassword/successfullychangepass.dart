import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/mybookingwidget.dart';

class SuccessChangePassword extends StatefulWidget {
  const SuccessChangePassword({Key? key}) : super(key: key);

  @override
  _SuccessChangePasswordState createState() => _SuccessChangePasswordState();
}

class _SuccessChangePasswordState extends State<SuccessChangePassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 500.h,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Password Updated",
                                style: white24mediumstyle,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Your password has been successfully changed!",
                                textAlign: TextAlign.center,
                                style: white14stylemedium,
                              ),
                            ],
                          ),
                          SvgPicture.asset("images/changetick.svg"),
                          CustomBtn(
                              txt: "Done",
                              onpress: () {},
                              height: 42.h,
                              width: 175.w)
                        ]),
                  ),
                ],
              ))),
    );
  }
}
