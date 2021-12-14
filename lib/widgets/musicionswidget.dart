import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class MusicionWidget extends StatelessWidget {
  const MusicionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 115.h,
        decoration: BoxDecoration(
            color: btnColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130.h,
              width: 175.w,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage("images/band2.png"),
                      fit: BoxFit.cover)),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
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
                          "Metal and Beats",
                          style: white14stylemedium,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis magna justo, scelerisque et euismod sit amet, eleifend quis magna aja sle st",
                      style: white10textStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
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
                              "(34)",
                              style: white10textStyle,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 15.h,
                          width: 50.w,
                          decoration: const BoxDecoration(
                              color: whitecolor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          child: Text(
                            "\$100 / hr",
                            style: black10textStyle,
                          ),
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
    );
  }
}
