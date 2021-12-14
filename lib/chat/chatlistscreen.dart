import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';

import 'chatmainscreen.dart';

class ChatListScreen extends StatefulWidget {
  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xff777777), Color(0xff232322)],
            ),
          ),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chat",
                        style: white16stylemedium,
                      ),
                      Icon(
                        Icons.search,
                        color: hintcolor,
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: chatlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => ChatPageView());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 61.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: whitecolor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(chatlist[index]),
                                    maxRadius: 30,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        chatlistnames[index],
                                        style: black16mediumtextstyle,
                                      ),
                                      Text(
                                        chatlistrecentmessages[index],
                                        style: hint16style,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(""),
                                  Text(
                                    chatlisttiming[index],
                                    style: hint11style,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
