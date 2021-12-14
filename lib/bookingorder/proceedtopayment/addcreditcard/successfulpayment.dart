import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/location/locationscreen.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/bookingdetailwidget.dart';
import 'package:livemusic_app_ui/widgets/creditcardfields.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/orderdetailswidget.dart';
import 'package:livemusic_app_ui/widgets/summerywidget.dart';

class SuccessfulPaymentScreen extends StatefulWidget {
  const SuccessfulPaymentScreen({Key? key}) : super(key: key);

  @override
  _SuccessfulPaymentScreenState createState() =>
      _SuccessfulPaymentScreenState();
}

class _SuccessfulPaymentScreenState extends State<SuccessfulPaymentScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add Credit Card",
                    style: white16stylemedium,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Thank you, Your payment was successful!",
                    style: adddebitsyleheading,
                  ),
                  Container(
                    height: 100.h,
                  ),
                  SvgPicture.asset(
                    "images/successfulpurchase.svg",
                    height: 300.h,
                    width: 300.w,
                  ),
                  Container(
                    height: 100.h,
                  ),
                  Column(
                    children: [
                      Center(
                        child: CustomBtn(
                            txt: "Done ",
                            onpress: () {
                              Get.to(() => const LocationScreen());
                            },
                            height: 43.h,
                            width: 214.w),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                        child: Text(
                          "All payments & Transactions are encrypted with high SSL Protocol",
                          style: hint10textStyle,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
