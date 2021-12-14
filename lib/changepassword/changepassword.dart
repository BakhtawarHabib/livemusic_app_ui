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
import 'package:livemusic_app_ui/widgets/mybookingwidget.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                                "New Credentials ",
                                style: white24mediumstyle,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Your email address has been verified,\nkindly set new password",
                                textAlign: TextAlign.center,
                                style: white14stylemedium,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 5),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                    // First child (child 1)
                                    width: double.infinity,
                                    child: TextFormField(
                                      obscureText: !_passwordVisible,
                                      textAlign: TextAlign.left,
                                      decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 60, vertical: 16),
                                          hintText: "New password",
                                          focusedBorder: InputBorder.none,
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                              // Based on passwordVisible state choose the icon
                                              _passwordVisible
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: const Color(0xff737373),
                                              size: 20,
                                            ),
                                            onPressed: () {
                                              // Update the state i.e. toogle the state of passwordVisible variable
                                              setState(() {
                                                _passwordVisible =
                                                    !_passwordVisible;
                                              });
                                            },
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                    ),
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    margin: const EdgeInsets.all(6)),
                                Container(
                                  width: 60.w,
                                  height: 60.h,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: SvgPicture.asset("images/lock.svg"),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.red)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 5),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                    // First child (child 1)
                                    width: double.infinity,
                                    child: TextFormField(
                                      obscureText: !_passwordVisible,
                                      textAlign: TextAlign.left,
                                      decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 60, vertical: 16),
                                          hintText: "Confirm password",
                                          focusedBorder: InputBorder.none,
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                              // Based on passwordVisible state choose the icon
                                              _passwordVisible
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: const Color(0xff737373),
                                              size: 20,
                                            ),
                                            onPressed: () {
                                              // Update the state i.e. toogle the state of passwordVisible variable
                                              setState(() {
                                                _passwordVisible =
                                                    !_passwordVisible;
                                              });
                                            },
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                    ),
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    margin: const EdgeInsets.all(6)),
                                Container(
                                  width: 60.w,
                                  height: 60.h,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: SvgPicture.asset("images/lock.svg"),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.red)),
                                ),
                              ],
                            ),
                          ),
                          CustomBtn(
                              txt: "Change Password",
                              onpress: () {
                                Get.off(() => SuccessChangePassword());
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
