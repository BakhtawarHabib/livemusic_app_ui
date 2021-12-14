import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';
import 'package:livemusic_app_ui/widgets/custombtn.dart';

int itemCount = 3;
List<bool> selected = <bool>[];

class PopularmusiconsScreen extends StatefulWidget {
  @override
  _PopularmusiconsScreenState createState() => _PopularmusiconsScreenState();
}

class _PopularmusiconsScreenState extends State<PopularmusiconsScreen> {
  @override
  void initState() {
    for (var i = 0; i < itemCount; i++) {
      selected.add(false);
    }
    super.initState();
  }

  int _value = 6;
  Icon firstIcon = Icon(
    Icons.favorite_sharp, // Icons.favorite
    color: Colors.yellow, // Colors.red
    size: 20,
  );
  Icon secondIcon = Icon(
    Icons.favorite_sharp, // Icons.favorite_border
    color: Colors.grey,
    size: 20,
  );
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xff777777), Color(0xff232322)],
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackArrow(),
                  Text(
                    "Popular Musicians",
                    style: white16stylemedium,
                  ),
                  const Text("")
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SingleChildScrollView(
                child: Column(
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 115.h,
                                decoration: BoxDecoration(
                                    color: btnColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 130.h,
                                      width: 175.w,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(bandpics[index]),
                                              fit: BoxFit.cover)),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Row(
                                              children: [
                                                const CircleAvatar(
                                                  maxRadius: 15,
                                                  backgroundColor: whitecolor,
                                                  backgroundImage: AssetImage(
                                                    "images/profilechar.png",
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  groupsnames[index],
                                                  style: white14stylemedium,
                                                ),
                                                Expanded(
                                                  child: IconButton(
                                                    icon: selected
                                                            .elementAt(index)
                                                        ? firstIcon
                                                        : secondIcon,
                                                    onPressed: () {
                                                      try {
                                                        // your code that you want this IconButton do
                                                        setState(() {
                                                          selected[index] =
                                                              !selected
                                                                  .elementAt(
                                                                      index);
                                                        });
                                                        print(
                                                            'tap on ${index + 1}th IconButton ( change to : ');
                                                        print(selected[index]
                                                            ? 'active'
                                                            : 'deactive' +
                                                                ' )');
                                                      } catch (e) {
                                                        print(e);
                                                      }
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis magna justo, scelerisque et euismod sit amet, eleifend quis magna aja sle st",
                                              style: white10textStyle,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                child: Row(
                                                  children: [
                                                    RatingBar.builder(
                                                      initialRating: 5,
                                                      itemSize: 15,
                                                      minRating: 1,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemPadding:
                                                          const EdgeInsets
                                                                  .symmetric(
                                                              horizontal: 0.0),
                                                      itemBuilder:
                                                          (context, _) =>
                                                              const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                        size: 6,
                                                      ),
                                                      onRatingUpdate:
                                                          (rating) {},
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Text(
                                                      ratingscore[index],
                                                      style: white10textStyle,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                height: 15.h,
                                                width: 50.w,
                                                decoration: const BoxDecoration(
                                                    color: whitecolor,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    5),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    5),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    5))),
                                                child: Text(
                                                  "\$100 / hr",
                                                  style: black10textStyle,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 91.h,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      image: DecorationImage(
                          image: AssetImage("images/banner2.png"),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void avaliabledialog(
    BuildContext context,
  ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          int selectedRadio = 0;
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
              20,
            )),
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Container(
                  width: 326.w,
                  height: 598.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Search Filters",
                          style: black18mediumtextstyle,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: hintcolor,
                          ),
                          Text(
                            "Location",
                            style: grey18normaltextstyle,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "0 km",
                            style: smalltextStylefontblck,
                          ),
                          Text(
                            "MAX",
                            style: smalltextStylefontblck,
                          )
                        ],
                      ),
                      Slider(
                          value: _value.toDouble(),
                          min: 1.0,
                          max: 20.0,
                          divisions: 5,
                          activeColor: btnColor,
                          inactiveColor: hintcolor,
                          label: '1km',
                          onChanged: (double newValue) {
                            setState(() {
                              _value = newValue.round();
                            });
                          },
                          semanticFormatterCallback: (double newValue) {
                            return '${newValue.round()} dollars';
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 1,
                            width: 127.w,
                            color: Colors.black.withOpacity(0.4),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Types",
                            style: black16mediumtextstyle,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              width: 127.w,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: List<Widget>.generate(3, (int index) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Radio<int>(
                                    activeColor: btnColor,
                                    value: index,
                                    groupValue: selectedRadio,
                                    onChanged: (value) {
                                      setState(() => selectedRadio = value!);
                                    },
                                  ),
                                  Text(
                                    typesalertbox[index],
                                    style: grey18normaltextstyle,
                                  ),
                                ],
                              ),
                            ],
                          );
                        }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 1,
                            width: 127.w,
                            color: Colors.black.withOpacity(0.4),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Music Type",
                            style: black16mediumtextstyle,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              width: 127.w,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: List<Widget>.generate(
                            musictypesalertbox.length, (int index) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Radio<int>(
                                    activeColor: btnColor,
                                    value: index,
                                    groupValue: selectedRadio,
                                    onChanged: (value) {
                                      setState(() => selectedRadio = value!);
                                    },
                                  ),
                                  Text(
                                    musictypesalertbox[index],
                                    style: grey18normaltextstyle,
                                  ),
                                ],
                              ),
                            ],
                          );
                        }),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                        child: CustomBtn(
                            txt: "Apply Filters",
                            onpress: () {},
                            height: 25.h,
                            width: 120.w),
                      )
                    ],
                  ),
                );
              },
            ),
          );
        });
  }
}
