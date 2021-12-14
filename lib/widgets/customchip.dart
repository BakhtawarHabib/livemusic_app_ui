import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class CustomChip extends StatefulWidget {
  String text;
  CustomChip({required this.text});

  @override
  _CustomChipState createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      alignment: Alignment.center,
      height: 28.h,
      constraints: BoxConstraints(maxWidth: 80.w, minWidth: 65.w),
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(
          widget.text,
          style: white12fontnormal,
        ),
      ),
    );
  }
}
