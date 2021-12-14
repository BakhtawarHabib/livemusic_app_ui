import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/customtextfields.dart';
import 'package:livemusic_app_ui/widgets/horizantaldivider.dart';
import 'package:livemusic_app_ui/widgets/musicionswidget.dart';
import 'package:livemusic_app_ui/widgets/mybookingwidget.dart';

class MyBookingDetailScreen extends StatefulWidget {
  const MyBookingDetailScreen({Key? key}) : super(key: key);

  @override
  _MyBookingDetailScreenState createState() => _MyBookingDetailScreenState();
}

class _MyBookingDetailScreenState extends State<MyBookingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
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
                  BackArrow(),
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
              const MusicionWidget(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fire Arcade Event 2021",
                        style: white22boldstyle,
                      ),
                      Text(
                        "By William Jack Smith",
                        style: white14stylemedium,
                      )
                    ],
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: const StadiumBorder(),
                    color: const Color(0xffCECECE),
                    child: Text(
                      "Concert",
                      style: white14stylemedium,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  bookingdetailicons.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  bookingdetailicons[index],
                                  height: 20,
                                  color: btnColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  bookingdetailnames[index],
                                  style: white14stylemedium,
                                )
                              ],
                            ),
                            Text(
                              bookingiconsdetails[index],
                              style: white13style,
                            ),
                          ],
                        ),
                        Divider(
                          color: hintcolor.withOpacity(0.3),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HorizntalDivider(),
                  Text(
                    "Leave Rating",
                    style: white14stylemedium,
                  ),
                  const HorizntalDivider(),
                ],
              ),
              const ReviewTextField(),
              RatingBar.builder(
                initialRating: 5,
                itemSize: 20,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 6,
                ),
                onRatingUpdate: (rating) {},
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: CustomBtn(
                    txt: "Post", onpress: () {}, height: 40.h, width: 214.w),
              )
            ],
          ),
        ),
      )),
    );
  }
}
