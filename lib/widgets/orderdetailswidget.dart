import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class OrdersDetailWidget extends StatelessWidget {
  const OrdersDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: whitecolor, borderRadius: BorderRadius.circular(10)),
      height: 130.h,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Info",
                  style: black16normalstyle,
                ),
                Text(
                  "#9283",
                  style: black16normalstyle,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Event Booking total fee",
                  style: black10textStyle,
                ),
                Text(
                  "\$400",
                  style: black10textStyle,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Extra Services",
                  style: black10textStyle,
                ),
                Text(
                  "\$50",
                  style: black10textStyle,
                )
              ],
            ),
            const Divider(
              color: hintcolor,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: black16normalstyle,
                ),
                Text(
                  "\$450",
                  style: black16normalstyle,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
