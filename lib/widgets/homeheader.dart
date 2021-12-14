import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 17, top: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        color: btnColor,
      ),
      height: 250.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
            width: MediaQuery.of(context).size.width - 50,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey Williams! Discover the best,",
                          style: white12fontnormal,
                        ),
                        Text(
                          "Artist, Musicians Band & much more",
                          style: white12fontbold,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 20,
                          color: whitecolor,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "New York",
                          style: white12fontnormal,
                        ),
                      ],
                    ),
                  ],
                ),
                SvgPicture.asset(
                  "images/rockband.svg",
                  height: 183.h,
                  width: 274.w,
                )
              ],
            )),
      ),
    );
  }
}
