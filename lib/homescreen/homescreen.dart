import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/search/searchscreen.dart';
import 'package:livemusic_app_ui/widgets/bandwidget.dart';
import 'package:livemusic_app_ui/widgets/bandwidgetlistwedding.dart';
import 'package:livemusic_app_ui/widgets/customtextfields.dart';
import 'package:livemusic_app_ui/widgets/homeheader.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xff777777), Color(0xff232322)],
            ),
          ),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              const HomeHeader(),
              const SizedBox(
                height: 15,
              ),
              Positioned(
                width: MediaQuery.of(context).size.width,
                top: 200,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 15.h),
                        InkWell(
                            onTap: () {
                              Get.to(() => SearchScreen());
                            },
                            child: const SearchTextField()),
                        SizedBox(height: 15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Popular Musicians",
                                  style: white16stylemedium,
                                ),
                                Text(
                                  " (New York)",
                                  style: white10textStyle,
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => SearchScreen());
                              },
                              child: Text(
                                "View All",
                                style: white12fontbold,
                              ),
                            )
                          ],
                        ),
                        Container(height: 230.h, child: BandWidgetList()),
                        SizedBox(height: 5.h),
                        Container(
                          height: 50.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              border: Border.all(
                                color: const Color(0xffFF9480),
                              ),
                              image: const DecorationImage(
                                  image: AssetImage("images/banner.png"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "For Weddings",
                                  style: white16stylemedium,
                                ),
                              ],
                            ),
                            Text(
                              "View All",
                              style: white12fontbold,
                            ),
                          ],
                        ),
                        Container(
                            height: 230.h, child: BandWidgetListWedding()),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
