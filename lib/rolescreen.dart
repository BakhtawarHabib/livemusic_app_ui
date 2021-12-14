import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/login/login.dart';

class RoleScreen extends StatefulWidget {
  const RoleScreen({Key? key}) : super(key: key);

  @override
  _RoleScreenState createState() => _RoleScreenState();
}

class _RoleScreenState extends State<RoleScreen> {
  int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
                  image: AssetImage("images/girlbackground.png"),
                  fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset("images/logo.svg"),
              Container(
                height: 100.h,
              ),
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: whitecolor, borderRadius: BorderRadius.circular(30)),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: _myRadioButton(
                  title: "Looking for an Artist",
                  value: 0,
                  onChanged: (newValue) =>
                      setState(() => _groupValue = newValue),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: whitecolor, borderRadius: BorderRadius.circular(30)),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: _myRadioButton(
                  title: "I am an Artist",
                  value: 1,
                  onChanged: (newValue) =>
                      setState(() => _groupValue = newValue),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => LoginScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: btnColor, borderRadius: BorderRadius.circular(20)),
                  height: 40.h,
                  width: 172.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Continue",
                        style: white16stylemedium,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: whitecolor,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget _myRadioButton({title, value, onChanged}) {
    return RadioListTile(
      activeColor: btnColor,
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title),
    );
  }
}
