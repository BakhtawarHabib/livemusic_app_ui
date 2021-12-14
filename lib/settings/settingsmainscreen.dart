import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/languages/languagesscreen.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/mybookingwidget.dart';

import 'notifications/notificationsscreen.dart';

class SettingsMainScreen extends StatefulWidget {
  const SettingsMainScreen({Key? key}) : super(key: key);

  @override
  _SettingsMainScreenState createState() => _SettingsMainScreenState();
}

class _SettingsMainScreenState extends State<SettingsMainScreen> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackArrow(),
                    Text(
                      "Settings",
                      style: white16stylemedium,
                    ),
                    const Text(""),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Column(
                  children: List.generate(
                    settingsicons.length,
                    (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    settingsnavigation[index]));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    settingsicons[index],
                                    height: 50,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    settingsnames[index],
                                    style: white16stylemedium,
                                  )
                                ],
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: whitecolor,
                                  ))
                            ],
                          ),
                        ),
                        Divider(
                          color: hintcolor.withOpacity(0.3),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  CustomIconBtn(
                    height: 42.h,
                    icon: 'images/logouticon.svg',
                    onpress: () {},
                    txt: 'Log out',
                    width: 214.w,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "V. 1.00",
                    style: smalltextStylefontgrey,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
