import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/bookingorder/proceedtopayment/proceedtopayment.dart';
import 'package:livemusic_app_ui/bottomnavigation/bottomnavigation.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/homescreen/homescreen.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/customtextfields.dart';
import 'package:livemusic_app_ui/widgets/editprofileavatar.dart';
import 'package:livemusic_app_ui/widgets/musicionswidget.dart';

class BookingOrderScreen extends StatefulWidget {
  const BookingOrderScreen({Key? key}) : super(key: key);

  @override
  _BookingOrderScreenState createState() => _BookingOrderScreenState();
}

class _BookingOrderScreenState extends State<BookingOrderScreen> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKeyy = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackArrow(),
                  Text(
                    "Booking Order",
                    style: white16stylemedium,
                  ),
                  const Text("")
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: whitecolor,
                          backgroundImage: AssetImage(
                            "images/profilechar.png",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Beauty & Sound",
                                style: white14stylemedium,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: greycolor,
                                    size: 15,
                                  ),
                                  Text(
                                    "New York",
                                    style: grey14style,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Change",
                          style: white10textStyle,
                        ),
                      ),
                      const MusicionWidget(),
                    ],
                  ),
                  CustomBookingTextField(
                    containericon: 'images/eventicon.svg',
                    hinttext: 'Event Title',
                  ),
                  CustomBookingTextField(
                    containericon: 'images/timericon.svg',
                    hinttext: 'Event Duration (hr)',
                  ),
                  CustomBookingTextField(
                    containericon: 'images/timeicon.svg',
                    hinttext: 'Time (09:30 PM)',
                  ),
                  CustomBookingTextField(
                    containericon: 'images/calendericon.svg',
                    hinttext: 'Date (20/11/2021)',
                  ),
                  CustomBookingTextField(
                    containericon: 'images/locationicon.svg',
                    hinttext: 'Location (Brooklyn)',
                  ),
                  PriceNotChangeTextField(
                    containericon: 'images/dollaricon.svg',
                    hinttext: '\$100 / hr',
                  ),
                  // CustomTextField(
                  //   containericon: 'images/email.svg',
                  //   hinttext: 'artisits@email.com',
                  // ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomBtn(
                  txt: "Save & Continue",
                  onpress: () {
                    Get.to(() => const ProceedtoPaymentScreen());
                  },
                  height: 43.h,
                  width: 172.w)
            ],
          ),
        ),
      )),
    );
  }
}
