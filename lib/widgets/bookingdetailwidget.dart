import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class BookingDetailWidget extends StatelessWidget {
  String icon;
  String info;
  BookingDetailWidget({required this.icon, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(icon),
            SizedBox(
              width: 5.w,
            ),
            Text(
              info,
              style: smalltextStylefontblck,
            )
          ],
        ),
      ),
    );
  }
}
