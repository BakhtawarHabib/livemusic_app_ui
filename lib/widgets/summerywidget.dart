import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

import 'bookingdetailwidget.dart';

class SummeryWidget extends StatelessWidget {
  const SummeryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: whitecolor, borderRadius: BorderRadius.circular(10)),
      height: 110.h,
      child: Row(children: [
        SizedBox(
          width: 5.w,
        ),
        Image.asset("images/band2.png"),
        Expanded(
          child: Container(
            decoration: BoxDecoration(),
            height: 110,
            child: Column(children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(
                      "Metal and Beats",
                      style: blackbold14style,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: 54.w,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "images/editicon.svg",
                            height: 10,
                            width: 10,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Edit",
                            style: black10textStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  BookingDetailWidget(
                    icon: 'images/timeicon.svg',
                    info: '09:30 PM',
                  ),
                  BookingDetailWidget(
                    icon: 'images/calendericon.svg',
                    info: '20/11/2021',
                  ),
                ],
              ),
              Row(
                children: [
                  BookingDetailWidget(
                    icon: 'images/timericon.svg',
                    info: '4 Hour',
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  BookingDetailWidget(
                    icon: 'images/locationicon.svg',
                    info: '123,RH  Brooklyn',
                  ),
                ],
              )
            ]),
          ),
        )
      ]),
    );
  }
}
