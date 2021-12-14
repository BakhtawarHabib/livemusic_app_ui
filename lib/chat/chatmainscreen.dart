import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:livemusic_app_ui/bookingorder/bookingorderscreen.dart';
import 'package:livemusic_app_ui/chat/reciverwidget.dart';
import 'package:livemusic_app_ui/chat/senderwidget.dart';
import 'package:livemusic_app_ui/constants/colors.dart';
import 'package:livemusic_app_ui/constants/styles.dart';
import 'package:livemusic_app_ui/widgets/backarrow.dart';

class ChatPageView extends StatefulWidget {
  @override
  _ChatPageViewState createState() => _ChatPageViewState();
}

class _ChatPageViewState extends State<ChatPageView> {
  TextEditingController _text = new TextEditingController();
  ScrollController _scrollController = ScrollController();
  var childList = <Widget>[];

  @override
  void initState() {
    super.initState();

    childList.add(Align(
      alignment: const Alignment(1, 0),
      child: SendedMessageWidget(
        content: 'Hi...',
        time: '9:22 AM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(1, 0),
      child: SendedMessageWidget(
        content: 'OK \nI will be here ...',
        time: '9:23 AM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(-1, 0),
      child: ReceivedMessageWidget(
        content: 'I am busy with my boss I will getyou in a while. NM',
        time: '9:23 AM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(1, 0),
      child: SendedMessageWidget(
        content: 'Ok take your time',
        time: '22:40 PM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(-1, 0),
      child: ReceivedMessageWidget(
        content:
            'Hey I am here. Can we start the meeting do dicuss the details...',
        time: '9:57 PM',
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xff777777), Color(0xff232322)],
            ),
          ),
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const BackArrow(),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              "Alex Jack",
                              style: white16stylemedium,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Get.to(() => BookingOrderScreen());
                                },
                                child:
                                    SvgPicture.asset("images/ordericon.svg")),
                            SizedBox(
                              width: 10.w,
                            ),
                            const Icon(
                              Icons.more_vert,
                              color: whitecolor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 6,
                    color: whitecolor,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[Color(0xff777777), Color(0xff232322)],
                        ),
                      ),
                      child: SingleChildScrollView(
                          controller: _scrollController,
                          // reverse: true,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: childList,
                          )),
                    ),
                  ),
                  const Divider(height: 0, color: Colors.black26),
                  Container(
                    color: whitecolor,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        maxLines: 20,
                        controller: _text,
                        decoration: InputDecoration(
                          suffixIcon: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [SvgPicture.asset("images/sendicon.svg")],
                          ),
                          border: InputBorder.none,
                          hintText: "Type a message...",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
