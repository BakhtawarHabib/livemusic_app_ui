import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: SvgPicture.asset("images/backarrow.svg"),
    );
  }
}
