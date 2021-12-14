import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/changepassword/successfullychangepass.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/customtextfields.dart';
import 'package:livemusic_app_ui/widgets/mybookingwidget.dart';

import 'emailverification.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool _passwordVisible = false;
  int selectedRadio = 1;
  @override
// ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

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
                                "Forgot Password",
                                style: white24mediumstyle,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Provide email address that you have entered at \n the time of registration,to reset password",
                                textAlign: TextAlign.center,
                                style: white14stylemedium,
                              ),
                            ],
                          ),
                          CustomTextField(
                            containericon: 'images/email.svg',
                            hinttext: 'artisits@email.com',
                          ),
                          CustomBtn(
                              txt: "Get Code",
                              onpress: () {
                                Get.off(() => PinCodeVerificationScreen());
                              },
                              height: 42.h,
                              width: 175.w)
                        ]),
                  ),
                ],
              ))),
    );
  }
}
