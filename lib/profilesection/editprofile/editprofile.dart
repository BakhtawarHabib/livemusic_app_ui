import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/bottomnavigation/bottomnavigation.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/homescreen/homescreen.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/creditcardfields.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/customtextfields.dart';
import 'package:livemusic_app_ui/widgets/editprofileavatar.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool _passwordVisible = false;
  int selectedRadio = 1;
  @override
// ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

  final List<String> _locations = [
    'Male',
    'Female',
  ];

  String? _selectedLocation = "Hair Cut";
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
                  Text(""),
                  Text(
                    "Profile",
                    style: white16stylemedium,
                  ),
                  const Text("")
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  const EditProfilePicture(),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Profile Photo",
                    style: normaltextStylefont,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomUserTextField(
                    containericon: 'images/accountname.svg',
                    hinttext: 'William',
                  ),
                  CustomUserTextField(
                    containericon: 'images/accountname.svg',
                    hinttext: 'Smith',
                  ),
                  CustomTextFieldSuffixIcon(
                    containericon: 'images/gendericon.svg',
                    hinttext: _selectedLocation.toString(),
                    suffixwidget: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton<String>(
                          underline: Text(""),
                          items: _locations.map((String val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          }).toList(),
                          onChanged: (newVal) {
                            _selectedLocation = newVal;
                            setState(() {});
                          }),
                    ),
                  ),
                  CustomTextFieldSuffixIcon(
                      containericon: 'images/locationicondark.svg',
                      hinttext: 'Red Hook, Brooklyn',
                      suffixwidget: const Icon(
                        Icons.my_location,
                        color: Color(0xff47AFFF),
                      )),
                  CustomUserTextField(
                    containericon: 'images/email.svg',
                    hinttext: 'artisits@email.com',
                  ),
                  CustomUserTextField(
                    containericon: 'images/cakeicon.svg',
                    hinttext: 'Birthday',
                  ),
                  const AboutTextField(),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomBtn(txt: "Save", onpress: () {}, height: 43.h, width: 172.w)
            ],
          ),
        ),
      )),
    );
  }
}
