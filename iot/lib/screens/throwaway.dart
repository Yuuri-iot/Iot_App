import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iot/screens/bottombar/trash.dart';

class ThrowAway extends StatefulWidget {
  const ThrowAway({super.key});

  @override
  State<ThrowAway> createState() => _ThrowAwayState();
}

class _ThrowAwayState extends State<ThrowAway> {
  late Timer timer = timer;
  double firstTop = 100; //15
  double secondTop = 0; //40
  double thirdTop = 0; //65
  double times = 0;
  bool down = false;
  bool isOpacity = false;
  void start() {
    setState(() {
      down = true;
    });
    timer = Timer.periodic(const Duration(microseconds: 1020000), (timer) {
      setState(() {
        times++;
        if (times % 2 == 1) {
          setState(() {
            down = false;
          });
        } else {
          setState(() {
            down = true;
          });
        }
        if (times == 4) {
          setState(() {
            isOpacity = true;
          });
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        height: 844.h,
        width: 390.w,
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(left: 19.w, top: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Yu",
                  style: TextStyle(
                      fontSize: 30.sp, color: const Color(0xff18A6F5)),
                ),
                Text(
                  "uri",
                  style: TextStyle(
                      fontSize: 30.sp, color: const Color(0xff17C81E)),
                )
              ],
            ),
          ),
          AnimatedPositioned(
              top: down ? 200.h : 170.h,
              left: 160.w,
              duration: const Duration(microseconds: 1020000),
              child: Container(
                height: 150.h,
                child: Stack(
                  children: [
                    Image.asset("images/first.png"),
                    Positioned(
                        top: 25.h, child: Image.asset("images/second.png")),
                    Positioned(
                        top: 50.h, child: Image.asset("images/third.png"))
                  ],
                ),
              )),
          Positioned(
              top: 310.h,
              left: 67.w,
              child: Image.asset("images/trashcan.png")),
          Positioned(
            top: 590.h,
            left: 30.w,
            child: Text(
              "쓰레기통에 쓰레기를 넣어주세요!",
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
            ),
          ),
          isOpacity
              ? Positioned(
                  top: 670.h,
                  left: 160.w,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Trash()));
                      },
                      child: const Text(
                        "다음",
                      )))
              : Text("")
        ]),
      ),
    );
  }
}
