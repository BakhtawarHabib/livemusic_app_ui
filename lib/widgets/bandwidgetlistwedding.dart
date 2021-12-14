import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class BandWidgetListWedding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 143.h,
            width: 173.w,
            decoration: BoxDecoration(
                color: whitecolor, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(
                            bandpics2[index],
                          ),
                          fit: BoxFit.cover)),
                ),
                Row(
                  children: [
                    Image.asset(
                      "images/profilechar.png",
                      height: 30.h,
                    ),
                    Expanded(
                        child: Text(
                      "Rockstar Musicians",
                      style: smalltextStylefontblck,
                    ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis magna justo, scelerisque et euismod sit amet,eleifend quis magna. Sed fringilla, est at volutpat sodales",
                      style: black10textStyle),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 5,
                        itemSize: 15,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 6,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "(16)",
                        style: black10textStyle,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
