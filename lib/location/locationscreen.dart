import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/location.png"), fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(
                        "images/backarrow.svg",
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 50.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                          color: whitecolor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: btnColor, width: 2)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: whitecolor,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                "images/closeicon.svg",
                                color: Colors.grey,
                              ),
                            ),
                            hintText: 'Red Hook, Brooklyn',
                            hintStyle: black16normalstyle),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: CustomBtn(
                      txt: "Add Location ",
                      onpress: () {
                        Get.to(() => const LocationScreen());
                      },
                      height: 43.h,
                      width: 214.w),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
