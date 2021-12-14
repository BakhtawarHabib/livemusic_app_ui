import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:livemusic_app_ui/chat/chatlistscreen.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/homescreen/homescreen.dart';
import 'package:livemusic_app_ui/mybookings/mybookingscreen.dart';
import 'package:livemusic_app_ui/profilesection/profilemainpage.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({Key? key}) : super(key: key);

  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _mole = 0;
  // int _currentIndex = 0;
  final tabs = [
    HomeScreen(),
    MyBookingScreen(),
    ChatListScreen(),
    const ProfileMainPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          iconSize: 30.h,
          type: BottomNavigationBarType.fixed,
          backgroundColor: btnColor,
          currentIndex: _mole,
          onTap: (index) {
            setState(() {
              _mole = index;
            });
          },
          selectedFontSize: 15,
          unselectedFontSize: 15,
          selectedItemColor: whitecolor,
          unselectedItemColor: whitecolor.withOpacity(0.7),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: whitecolor,
              activeIcon: SvgPicture.asset("images/homeactive.svg"),
              icon: SvgPicture.asset("images/home.svg"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: whitecolor,
              activeIcon: SvgPicture.asset("images/activebooking.svg"),
              icon: SvgPicture.asset("images/booking.svg"),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              backgroundColor: whitecolor,
              activeIcon: SvgPicture.asset("images/activechat.svg"),
              icon: SvgPicture.asset("images/chat.svg"),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              backgroundColor: whitecolor,
              activeIcon: SvgPicture.asset("images/activeprofile.svg"),
              icon: SvgPicture.asset("images/profile.svg"),
              label: 'Profile',
            ),
          ],
        ),
        body: tabs[_mole],
      ),
    );
  }
}
