import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';

class RatingSlider extends StatelessWidget {
  const RatingSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      child: CarouselSlider.builder(
        itemCount: 4,
        options: CarouselOptions(
          viewportFraction: 0.4,
          aspectRatio: 2.0,
          autoPlay: false,
          enlargeCenterPage: true,
        ),
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Flex(
            direction: Axis.vertical,
            children: [
              CircleAvatar(
                maxRadius: 40,
                backgroundImage: AssetImage(artistimages[index]),
              ),
              Text(
                "Alexandria",
                style: white14stylemedium,
              ),
              RatingBar.builder(
                initialRating: 5,
                itemSize: 15,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 6,
                ),
                onRatingUpdate: (rating) {},
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetuadipiscing elit. Duis magna justo,scelerisque et",
                textAlign: TextAlign.center,
                style: white10textStyle,
              ),
            ],
          );
        },
      ),
    );
  }
}
