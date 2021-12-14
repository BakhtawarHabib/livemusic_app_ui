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

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List<bool> _list = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: const EdgeInsets.only(top: 20, left: 0, right: 0),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BackArrow(),
                      Text(
                        "Notifications",
                        style: white16stylemedium,
                      ),
                      const Icon(
                        Icons.notifications,
                        color: whitecolor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Column(
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: whitecolor,
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              color: whitecolor,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              notificationsicons[index],
                              height: 50,
                            ),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                notificationstitle[index],
                                style: black16mediumtextstyle,
                              ),
                              Text(
                                notificationstime[index],
                                style: smalltextStylefontgrey,
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                children: [
                                  Text(
                                    notificationssubtitle[index],
                                    style: red14normaltextstyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "images/adpic.png",
                ),
                fit: BoxFit.cover,
              )),
            ),
          ],
        ),
      )),
    );
  }
}
