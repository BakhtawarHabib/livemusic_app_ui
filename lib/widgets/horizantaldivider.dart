import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizntalDivider extends StatefulWidget {
  const HorizntalDivider({Key? key}) : super(key: key);

  @override
  _HorizntalDividerState createState() => _HorizntalDividerState();
}

class _HorizntalDividerState extends State<HorizntalDivider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      width: 130.w,
      color: const Color(0xffF4F5F6),
    );
  }
}
