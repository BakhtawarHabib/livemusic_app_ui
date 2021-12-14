import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/settings/settingsmainscreen.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/bookingdetailwidget.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/orderdetailswidget.dart';
import 'package:livemusic_app_ui/widgets/profilewidget.dart';
import 'package:livemusic_app_ui/widgets/summerywidget.dart';

import 'editprofile/editprofile.dart';

class ProfileMainPage extends StatefulWidget {
  const ProfileMainPage({Key? key}) : super(key: key);

  @override
  _ProfileMainPageState createState() => _ProfileMainPageState();
}

class _ProfileMainPageState extends State<ProfileMainPage> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
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
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                      color: btnColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(""),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 5),
                            child: Text(
                              "Profile",
                              style: white16stylemedium,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications,
                              color: whitecolor,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 20),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              maxRadius: 45,
                              backgroundColor: whitecolor,
                              backgroundImage: AssetImage(
                                "images/profilepic.png",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "William Smith",
                                    style: white20bold,
                                  ),
                                  Text(
                                    "user2021@music.com",
                                    style: white10textStyle,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(() => EditProfileScreen());
                                      },
                                      child: Container(
                                        width: 100.w,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: whitecolor,
                                          boxShadow: const [
                                            BoxShadow(
                                              color: hintcolor,
                                              blurRadius:
                                                  0.4, // has the effect of softening the shadow
                                              spreadRadius:
                                                  0.0, // has the effect of extending the shadow
                                              offset: Offset(
                                                0.0, // horizontal, move right 10
                                                1.0, // vertical, move down 10
                                              ),
                                            )
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              "images/user.svg",
                                              height: 15,
                                              width: 15,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              "Edit Profile ",
                                              style: black10textStyle,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ProfileWidget(
                  name: 'Get Notifications',
                  icon: 'images/getnotification.svg',
                  widget: FlutterSwitch(
                    height: 20.0,
                    width: 40.0,
                    padding: 4.0,
                    toggleSize: 15.0,
                    borderRadius: 10.0,
                    activeColor: Color(0xff00AC45),
                    value: status,
                    onToggle: (value) {
                      setState(() {
                        status = value;
                      });
                    },
                  ),
                ),
                ProfileWidget(
                    name: 'My Favourites Groups',
                    icon: 'images/favouritegroup.svg',
                    widget: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: whitecolor,
                        ))),
                InkWell(
                  onTap: () {
                    Get.to(() => SettingsMainScreen());
                  },
                  child: ProfileWidget(
                      name: 'Settings',
                      icon: 'images/settingicon.svg',
                      widget: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: whitecolor,
                          ))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "V. 1.00",
                style: smalltextStylefontgrey,
              ),
            )
          ],
        ),
      )),
    );
  }
}
