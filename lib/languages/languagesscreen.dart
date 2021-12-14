import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';
import 'package:livemusic_app_ui/widgets/mybookingwidget.dart';

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({Key? key}) : super(key: key);

  @override
  _LanguagesScreenState createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  int? tappedIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Color(0xff777777), Color(0xff232322)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackArrow(),
                    Text(
                      "Language",
                      style: white16stylemedium,
                    ),
                    const Text(""),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Column(
                  children: List.generate(
                    languages.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            tappedIndex = index;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      languages[index],
                                      style: white16stylemedium,
                                    )
                                  ],
                                ),
                                Visibility(
                                  visible: tappedIndex == index,
                                  child: const Icon(
                                    Icons.done,
                                    color: Color(0xff20AF4B),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: hintcolor.withOpacity(0.3),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomBtn(
                    txt: "Save", onpress: () {}, height: 42.h, width: 214.w)
              ],
            ),
          ],
        ),
      )),
    );
  }
}
