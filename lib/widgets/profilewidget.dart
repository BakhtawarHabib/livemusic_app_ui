import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class ProfileWidget extends StatelessWidget {
  String name;
  String icon;
  Widget widget;
  ProfileWidget({required this.name, required this.icon, required this.widget});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height: 50,
              ),
              Text(
                name,
                style: white16stylemedium,
              )
            ],
          ),
          Container(
            child: widget,
          )
        ],
      ),
    );
  }
}
