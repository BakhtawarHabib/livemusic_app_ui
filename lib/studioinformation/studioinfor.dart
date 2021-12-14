import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/strings.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/customchip.dart';
import 'package:livemusic_app_ui/widgets/horizantaldivider.dart';
import 'package:livemusic_app_ui/widgets/iconbutton.dart';
import 'package:livemusic_app_ui/widgets/ratingwidget.dart';

class Studioinfo extends StatefulWidget {
  @override
  _StudioinfoState createState() => _StudioinfoState();
}

class _StudioinfoState extends State<Studioinfo> {
  int currentPos = 0;
  final controller = CarouselController();
  List<int> list = [1, 2, 3, 4, 5];
  List<String> listPaths = [
    "images/slider.png",
    "images/girlbackground.png",
  ];
  CarouselController? carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
        padding: const EdgeInsets.only(),
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
              CarouselSlider.builder(
                itemCount: listPaths.length,
                carouselController: carouselController,
                options: CarouselOptions(
                  viewportFraction: 1.1,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  //scrollDirection: Axis.vertical,

                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        currentPos = index;
                      },
                    );
                  },
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Padding(
                    padding: const EdgeInsets.all(0),
                    child: Card(
                      margin: const EdgeInsets.only(
                        top: 0.0,
                        bottom: 0.0,
                      ),
                      elevation: 6.0,
                      child: ClipRRect(
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              listPaths[index],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: InkWell(
                                  onTap: () {
                                    carouselController!.previousPage();
                                  },
                                  child: SvgPicture.asset(
                                    "images/leftarrow.svg",
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: () {
                                    carouselController!.nextPage();
                                  },
                                  child: SvgPicture.asset(
                                    "images/rightarrow.svg",
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: listPaths.map((url) {
                                  int index = listPaths.indexOf(url);
                                  return Container(
                                    width: currentPos == index ? 10.0 : 7.0,
                                    height: currentPos == index ? 10.0 : 7.0,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 2.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: currentPos == index
                                          ? btnColor
                                          : whitecolor,
                                    ),
                                  );
                                }).toList(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      maxRadius: 45,
                      backgroundColor: whitecolor,
                      backgroundImage: AssetImage(
                        "images/profilechar.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Beauty & Sound",
                            style: white20stylemedium,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: greycolor,
                                size: 15,
                              ),
                              Text(
                                "New York",
                                style: grey14style,
                              ),
                            ],
                          ),
                          Text(
                            "\$130 / hr",
                            style: white16stylemedium,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              IconBtn(
                height: 40.w,
                onpress: () {},
                width: 153.w,
                image: 'images/addicon.svg',
                txt: 'Book Concert',
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconBtn(
                    height: 40.w,
                    onpress: () {},
                    width: 153.w,
                    image: 'images/addicon.svg',
                    txt: 'Book Concert',
                  ),
                  IconBtn(
                    height: 40.w,
                    onpress: () {},
                    width: 153.w,
                    image: 'images/addicon.svg',
                    txt: 'Book Concert',
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HorizntalDivider(),
                  Text(
                    "Members",
                    style: white14stylemedium,
                  ),
                  const HorizntalDivider(),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    4,
                    (index) => Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 25.h,
                              backgroundImage: AssetImage(artistimages[index]),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              membersname[index],
                              style: white12fontnormal,
                            )
                          ],
                        )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HorizntalDivider(),
                  Text(
                    "About",
                    style: white14stylemedium,
                  ),
                  const HorizntalDivider(),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  bigtext,
                  style: white12fontnormal,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HorizntalDivider(),
                  Text(
                    "Music",
                    style: white14stylemedium,
                  ),
                  const HorizntalDivider(),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Wrap(
                  children: List.generate(
                chipsname.length,
                (index) => CustomChip(text: chipsname[index]),
              )),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HorizntalDivider(),
                  Text(
                    "Ratings",
                    style: white14stylemedium,
                  ),
                  const HorizntalDivider(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Reviews",
                      style: white16stylemedium,
                    ),
                    Text(
                      "View All",
                      style: white12fontbold,
                    ),
                  ],
                ),
              ),
              Container(
                  height: 400,
                  child: Column(
                    children: [
                      Expanded(
                        child: CarouselSlider(
                          carouselController: controller,
                          options: CarouselOptions(),
                          items: list
                              .map((item) => Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      child:
                                          Center(child: Text(item.toString())),
                                      color: Colors.white,
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () => controller.previousPage()),
                          IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () => controller.nextPage())
                        ],
                      )
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HorizntalDivider(),
                  Text(
                    "Others",
                    style: white14stylemedium,
                  ),
                  const HorizntalDivider(),
                ],
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ))),
    );
  }
}
