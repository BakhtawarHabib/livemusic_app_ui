import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/bookingdetailwidget.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/orderdetailswidget.dart';
import 'package:livemusic_app_ui/widgets/summerywidget.dart';

import 'addcreditcard/addcreditcard.dart';

class ProceedtoPaymentScreen extends StatefulWidget {
  const ProceedtoPaymentScreen({Key? key}) : super(key: key);

  @override
  _ProceedtoPaymentScreenState createState() => _ProceedtoPaymentScreenState();
}

class _ProceedtoPaymentScreenState extends State<ProceedtoPaymentScreen> {
  int _groupValue = -1;
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      "Summery ",
                      style: white16stylemedium,
                    ),
                  ),
                  const SummeryWidget(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      "Order Details ",
                      style: white16stylemedium,
                    ),
                  ),
                  const OrdersDetailWidget(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Type ",
                            style: white16stylemedium,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => const AddCreditCardScreen());
                            },
                            child: Text(
                              "+ Add New Credit Card",
                              style: white12textStyle,
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: whitecolor,
                            borderRadius: BorderRadius.circular(5)),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            _myRadioButton(
                              icon: "images/mastercardicon.svg",
                              cardname: "Mastercard Credit",
                              cardnumber: "**** **** **** 7361",
                              value: 0,
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue),
                            ),
                            _myRadioButton(
                              icon: "images/visacardicon.svg",
                              cardname: "Visa Credit Card",
                              cardnumber: "**** **** **** 8192",
                              value: 1,
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
              SizedBox(height: 20.h),
              CustomBtn(
                  txt: "Proceed To payment",
                  onpress: () {},
                  height: 43.h,
                  width: 214.w)
            ],
          ),
        ),
      )),
    );
  }

  Widget _myRadioButton({icon, value, onChanged, cardname, cardnumber}) {
    return RadioListTile(
      activeColor: lightthemecolor,
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                icon,
                height: 27,
                width: 27,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardname,
                    style: black12textStyle,
                  ),
                  Text(
                    cardnumber,
                    style: black12textStyle,
                  )
                ],
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ))
        ],
      ),
    );
  }
}
