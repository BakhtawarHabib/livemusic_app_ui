import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livemusic_app_ui/constants/colors.dart';

class EditProfileAvatar extends StatelessWidget {
  const EditProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundColor: whitecolor,
            backgroundImage: AssetImage("images/profilechar.png"),
          ),
          Positioned(
              right: 0,
              bottom: 65,
              child: SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset("images/editicon.svg"),
              ))
        ],
      ),
    );
  }
}

class EditProfilePicture extends StatelessWidget {
  const EditProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundColor: whitecolor,
            backgroundImage: AssetImage("images/profilepic.png"),
          ),
          Positioned(
              right: 15,
              bottom: 15,
              child: SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset("images/cameraicon.svg"),
              ))
        ],
      ),
    );
  }
}
