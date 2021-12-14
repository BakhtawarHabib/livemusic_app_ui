import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class MyBookingWidget extends StatelessWidget {
  String eventtype;
  String date;
  String monthday;
  String bookedname;
  String price;
  String time;
  String timertime;
  String location;
  String ordernumber;
  String bandimage;
  MyBookingWidget(
      {required this.bookedname,
      required this.date,
      required this.bandimage,
      required this.eventtype,
      required this.location,
      required this.monthday,
      required this.ordernumber,
      required this.price,
      required this.time,
      required this.timertime});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: btnColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              eventtype,
              style: black10medium,
            ),
            decoration: const BoxDecoration(
                color: whitecolor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            height: 20,
            width: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      date,
                      style: white14stylemedium,
                    ),
                    Text(
                      monthday,
                      style: white14stylemedium,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "\$",
                          style: red10latoboldstyle,
                        )
                      ],
                    ),
                    Text(
                      price,
                      style: red14latoboldstyle,
                    )
                  ],
                ),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/pricecontainer.png"),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 10.w,
              ),
              Image.asset(bandimage),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          bookedname,
                          style: white14stylemedium,
                        ),
                        Text("")
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("images/timeicon.svg"),
                        Text(
                          time,
                          style: white14stylemedium,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("images/timericon.svg"),
                        Text(
                          timertime,
                          style: white14stylemedium,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("images/locationicon.svg"),
                        Text(
                          location,
                          style: white14stylemedium,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "images/ordericon.svg",
                          height: 15,
                          color: const Color(0xffD5D5D5),
                        ),
                        Text(
                          ordernumber,
                          style: white14stylemedium,
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
