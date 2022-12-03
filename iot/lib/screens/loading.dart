import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iot/provider/user.dart';
import 'package:iot/screens/bottombar/bottom.dart';
import 'package:provider/provider.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool isLoading = true;
  late Timer timer = timer;

  void start() {
    timer = Timer.periodic(const Duration(microseconds: 7000000), (timer) {
      setState(() {
        isLoading = false;
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
    var emphasis = Provider.of<Emphaisis>(context);
    return Scaffold(
        appBar: null,
        body: isLoading
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [SpinKitHourGlass(color: Colors.blue)],
                ),
              )
            : Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 19.w, top: 14.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Yu",
                            style: TextStyle(
                                fontSize: 30.sp,
                                color: const Color(0xff18A6F5)),
                          ),
                          Text(
                            "uri",
                            style: TextStyle(
                                fontSize: 30.sp,
                                color: const Color(0xff17C81E)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 60.h, bottom: 30.h),
                        child: Image.asset("images/ddd.png")),
                    Text(
                      "이물질 있는 페트병을",
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "분리수거 하였습니다!",
                      style: TextStyle(
                        fontSize: 25.sp,
                      ),
                    ),
                    SizedBox(
                      height: 116.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 42.w, right: 60.w, bottom: 100.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images/coin.png"),
                          Text(
                            "100",
                            style: TextStyle(
                                fontSize: 25.sp, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "마일리지 지급!",
                            style: TextStyle(
                                fontSize: 25.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          emphasis.inputPrice(100);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const Bottom()));
                        },
                        child: Text("확인"))
                  ],
                ),
              ));
  }
}
