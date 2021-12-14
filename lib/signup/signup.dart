import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/emailverification/emailverify.dart';
import 'package:livemusic_app_ui/login/login.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/customtextfields.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

bool _passwordVisible = false;
int selectedRadio = 1;
@override
// ignore: must_call_super
void initState() {
  _passwordVisible = false;
}

final _formKey = GlobalKey<FormState>();
final GlobalKey<ScaffoldState> _scaffoldKeyy = GlobalKey<ScaffoldState>();

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKeyy,
          // body: Consumer<LoginScreenViewModel>(builder: (context, model, child) {
          //   return
          body: SingleChildScrollView(
              child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xff777777), Color(0xff232322)],
              ),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: SvgPicture.asset("images/logo.svg")),
                          SizedBox(
                            height: 30.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Text(
                              "Continue to sign Up!",
                              style: white24mediumstyle,
                            ),
                          ),
                        ],
                      ),
                      CustomTextField(
                        containericon: 'images/usericon.svg',
                        hinttext: 'Firstname',
                      ),
                      CustomTextField(
                        containericon: 'images/usericon.svg',
                        hinttext: 'Surname',
                      ),
                      CustomTextField(
                        containericon: 'images/email.svg',
                        hinttext: 'artisits@email.com',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                      hintText: "password",
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
                                    borderRadius: BorderRadius.circular(30)),
                                margin: const EdgeInsets.all(6)),
                            Container(
                              width: 60.w,
                              height: 60.h,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Text(
                                "Password must be at least 8 characters long ",
                                style: smalltextStylefontgrey),
                          ),
                          Row(
                            children: [
                              Radio<int>(
                                activeColor: Colors.red,
                                toggleable: true,
                                value: 1,
                                groupValue: selectedRadio,
                                onChanged: (value) {
                                  setState(
                                      () => selectedRadio = value.hashCode);
                                },
                              ),
                              Text(
                                "By continuing I agree with Terms & Conditions",
                                style: white10textStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                    child: CustomBtn(
                      height: 40.h,
                      onpress: () {
                        Get.to(() => const EmailVerifyScreen());
                      },
                      txt: 'Sign Up',
                      width: 172.w,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => LoginScreen());
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Text(
                          "Already have account? SIGN IN",
                          style: white16stylemedium,
                        ),
                      ))
                ],
              ),
            ),
          ))),
    );
  }
}
