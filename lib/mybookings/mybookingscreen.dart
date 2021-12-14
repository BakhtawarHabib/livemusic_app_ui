import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/mybookingwidget.dart';

import 'mybookingdetails.dart';

class MyBookingScreen extends StatefulWidget {
  const MyBookingScreen({Key? key}) : super(key: key);

  @override
  _MyBookingScreenState createState() => _MyBookingScreenState();
}

class _MyBookingScreenState extends State<MyBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
            backgroundColor: btnColor,
          ),
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
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(""),
                      Text(
                        "My Booking",
                        style: white16stylemedium,
                      ),
                      const Text(""),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  // ListView.builder(
                  //     physics: NeverScrollableScrollPhysics(),
                  //     shrinkWrap: true,
                  //     itemCount: 2,
                  //     itemBuilder: (context, index) {
                  //       return Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child: Container(
                  //           height: 180.h,
                  //           width: MediaQuery.of(context).size.width,
                  //           decoration: BoxDecoration(
                  //               color: btnColor,
                  //               borderRadius: BorderRadius.circular(10)),
                  //           child: Column(
                  //             children: [
                  //               Container(
                  //                 alignment: Alignment.center,
                  //                 child: Text(
                  //                   "For Concert",
                  //                   style: black10medium,
                  //                 ),
                  //                 decoration: const BoxDecoration(
                  //                     color: whitecolor,
                  //                     borderRadius: BorderRadius.only(
                  //                         bottomLeft: Radius.circular(10),
                  //                         bottomRight: Radius.circular(10))),
                  //                 height: 20,
                  //                 width: 100,
                  //               ),
                  //               Row(
                  //                 mainAxisAlignment:
                  //                     MainAxisAlignment.spaceBetween,
                  //                 children: [
                  //                   Padding(
                  //                     padding: const EdgeInsets.all(8.0),
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: [
                  //                         Text(
                  //                           "20th",
                  //                           style: white14stylemedium,
                  //                         ),
                  //                         Text(
                  //                           "November, Saturday  ",
                  //                           style: white14stylemedium,
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                   Container(
                  //                     alignment: Alignment.center,
                  //                     height: 20,
                  //                     width: 50,
                  //                     child: Row(
                  //                       mainAxisAlignment:
                  //                           MainAxisAlignment.spaceEvenly,
                  //                       children: [
                  //                         Column(
                  //                           children: [
                  //                             Text(
                  //                               "\$",
                  //                               style: red10latoboldstyle,
                  //                             )
                  //                           ],
                  //                         ),
                  //                         Text(
                  //                           "750",
                  //                           style: red14latoboldstyle,
                  //                         )
                  //                       ],
                  //                     ),
                  //                     decoration: const BoxDecoration(
                  //                         image: DecorationImage(
                  //                             image: AssetImage(
                  //                                 "images/pricecontainer.png"),
                  //                             fit: BoxFit.cover)),
                  //                   )
                  //                 ],
                  //               ),
                  //               Row(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   SizedBox(
                  //                     width: 10.w,
                  //                   ),
                  //                   Image.asset("images/band2.png"),
                  //                   Expanded(
                  //                       child: Container(
                  //                     padding: EdgeInsets.symmetric(
                  //                         horizontal: 10, vertical: 0),
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: [
                  //                         Row(
                  //                           mainAxisAlignment:
                  //                               MainAxisAlignment.spaceBetween,
                  //                           children: [
                  //                             Text(
                  //                               "Metal and Beats",
                  //                               style: white14stylemedium,
                  //                             ),
                  //                             Text("")
                  //                           ],
                  //                         ),
                  //                         SizedBox(
                  //                           height: 5.h,
                  //                         ),
                  //                         Row(
                  //                           mainAxisAlignment:
                  //                               MainAxisAlignment.spaceBetween,
                  //                           children: [
                  //                             SvgPicture.asset(
                  //                                 "images/timeicon.svg"),
                  //                             Text(
                  //                               "09:30 PM",
                  //                               style: white14stylemedium,
                  //                             )
                  //                           ],
                  //                         ),
                  //                         SizedBox(
                  //                           height: 5.h,
                  //                         ),
                  //                         Row(
                  //                           mainAxisAlignment:
                  //                               MainAxisAlignment.spaceBetween,
                  //                           children: [
                  //                             SvgPicture.asset(
                  //                                 "images/timericon.svg"),
                  //                             Text(
                  //                               "3 hour",
                  //                               style: white14stylemedium,
                  //                             )
                  //                           ],
                  //                         ),
                  //                         SizedBox(
                  //                           height: 5.h,
                  //                         ),
                  //                         Row(
                  //                           mainAxisAlignment:
                  //                               MainAxisAlignment.spaceBetween,
                  //                           children: [
                  //                             SvgPicture.asset(
                  //                                 "images/locationicon.svg"),
                  //                             Text(
                  //                               "Red Hook, Brooklyn",
                  //                               style: white14stylemedium,
                  //                             )
                  //                           ],
                  //                         ),
                  //                         SizedBox(
                  //                           height: 5.h,
                  //                         ),
                  //                         Row(
                  //                           mainAxisAlignment:
                  //                               MainAxisAlignment.spaceBetween,
                  //                           children: [
                  //                             SvgPicture.asset(
                  //                               "images/ordericon.svg",
                  //                               height: 15,
                  //                               color: const Color(0xffD5D5D5),
                  //                             ),
                  //                             Text(
                  //                               "#9283",
                  //                               style: white14stylemedium,
                  //                             )
                  //                           ],
                  //                         )
                  //                       ],
                  //                     ),
                  //                   ))
                  //                 ],
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       );
                  //     }),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(() => MyBookingDetailScreen());
                          },
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MyBookingWidget(
                                  bookedname: bookednames[index],
                                  date: dates[index],
                                  bandimage: bandimages[index],
                                  eventtype: eventtypes[index],
                                  location: locations[index],
                                  monthday: monthdays[index],
                                  ordernumber: ordernumbers[index],
                                  price: prices[index],
                                  time: times[index],
                                  timertime: timertimes[index])),
                        );
                      }),
                ],
              ),
            ),
          )),
    );
  }
}
