import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/bookingorder/proceedtopayment/addcreditcard/successfulpayment.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/bookingdetailwidget.dart';
import 'package:livemusic_app_ui/widgets/creditcardfields.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/orderdetailswidget.dart';
import 'package:livemusic_app_ui/widgets/summerywidget.dart';

class AddCreditCardScreen extends StatefulWidget {
  const AddCreditCardScreen({Key? key}) : super(key: key);

  @override
  _AddCreditCardScreenState createState() => _AddCreditCardScreenState();
}

class _AddCreditCardScreenState extends State<AddCreditCardScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackArrow(),
                  Text(
                    "Add Credit Card",
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
                  Text(
                    "Add your Debit/Credit Card Details",
                    style: adddebitsyleheading,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                      height: 175,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image.asset("images/card1.png"),
                          Image.asset("images/card2.png")
                        ],
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFieldSuffixIcon(
                    containericon: 'images/creditcard.svg',
                    hinttext: '7620 7954 4971 2025',
                    suffixwidget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SvgPicture.asset("images/visaicon.svg"),
                    ),
                  ),
                  CustomUserTextField(
                    containericon: 'images/user.svg',
                    hinttext: 'Peter Parker',
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomSmallTextField(
                          containericon: 'images/calendertimes.svg',
                          hinttext: '12/2025',
                        ),
                      ),
                      Expanded(
                        child: CustomSmallTextField(
                          containericon: 'images/cardcvv.svg',
                          hinttext: '634',
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: CustomBtn(
                        txt: "Add & Continue ",
                        onpress: () {
                          Get.offAll(() => const SuccessfulPaymentScreen());
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
              )
            ],
          ),
        ),
      )),
    );
  }
}
