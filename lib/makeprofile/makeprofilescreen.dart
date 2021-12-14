import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/bottomnavigation/bottomnavigation.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/homescreen/homescreen.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/customtextfields.dart';
import 'package:livemusic_app_ui/widgets/editprofileavatar.dart';

class MakeProfileScreen extends StatefulWidget {
  const MakeProfileScreen({Key? key}) : super(key: key);

  @override
  _MakeProfileScreenState createState() => _MakeProfileScreenState();
}

class _MakeProfileScreenState extends State<MakeProfileScreen> {
  bool _passwordVisible = false;
  int selectedRadio = 1;
  @override
// ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKeyy = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Color(0xff777777), Color(0xff232322)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackArrow(),
                  Text(
                    "Profile",
                    style: white16stylemedium,
                  ),
                  const Text("")
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Column(
                children: [
                  const EditProfileAvatar(),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Edit Avatar",
                    style: normaltextStylefont,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomTextField(
                    containericon: 'images/usericon.svg',
                    hinttext: 'Firstname',
                  ),
                  CustomTextField(
                    containericon: 'images/usericon.svg',
                    hinttext: 'Surname',
                  ),
                  EmailNotChangeCustomTextField(
                    containericon: 'images/email.svg',
                    hinttext: 'artisits@email.com',
                  ),
                  // CustomTextField(
                  //   containericon: 'images/email.svg',
                  //   hinttext: 'artisits@email.com',
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                            // First child (child 1)
                            width: double.infinity,
                            child: TextFormField(
                              obscureText: !_passwordVisible,
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 60, vertical: 16),
                                  hintText: "password",
                                  focusedBorder: InputBorder.none,
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      // Based on passwordVisible state choose the icon
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: const Color(0xff737373),
                                      size: 20,
                                    ),
                                    onPressed: () {
                                      // Update the state i.e. toogle the state of passwordVisible variable
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30))),
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            margin: const EdgeInsets.all(6)),
                        Container(
                          width: 60,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SvgPicture.asset("images/lock.svg"),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomBtn(
                  txt: "Save",
                  onpress: () {
                    Get.to(() => Bottomnavigation());
                  },
                  height: 43.h,
                  width: 172.w)
            ],
          ),
        ),
      )),
    );
  }
}
