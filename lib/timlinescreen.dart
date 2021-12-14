import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimlineScreen extends StatefulWidget {
  const TimlineScreen({Key? key}) : super(key: key);

  @override
  _TimlineScreenState createState() => _TimlineScreenState();
}

class _TimlineScreenState extends State<TimlineScreen> {
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.center,
      startChild: Container(
        constraints: const BoxConstraints(
          minHeight: 120,
        ),
        color: Colors.lightGreenAccent,
      ),
      endChild: Container(
        color: Colors.amberAccent,
      ),
    );
  }
}
