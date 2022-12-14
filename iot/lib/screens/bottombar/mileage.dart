import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Mileage extends StatefulWidget {
  const Mileage({super.key});

  @override
  State<Mileage> createState() => _MileageState();
}

class _MileageState extends State<Mileage> {
  bool pressed1 = true;
  bool pressed2 = false;
  bool pressed3 = false;
  bool pressed4 = false;
  bool pressed5 = false;

  PageController pageController = PageController(
    initialPage: 0,
  );

  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SingleChildScrollView(
        child: Center(
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
              SizedBox(
                height: 25.h,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 19.w,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            pressed1 = true;
                            pressed2 = false;
                            pressed3 = false;
                            pressed4 = false;
                            pressed5 = false;
                            pageController.jumpToPage(0);
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "?????????",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: pressed1
                                      ? Colors.black
                                      : const Color(0xffB1B1B1)),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            pressed1
                                ? Container(
                                    width: 61.w,
                                    height: 2.h,
                                    color: Colors.black,
                                  )
                                : Container(
                                    height: 2.h,
                                    width: 61.w,
                                  )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            pressed1 = false;
                            pressed2 = true;
                            pressed3 = false;
                            pressed4 = false;
                            pressed5 = false;
                            pageController.jumpToPage(1);
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "?????????",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: pressed2
                                      ? Colors.black
                                      : const Color(0xffB1B1B1)),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            pressed2
                                ? Container(
                                    width: 61.w,
                                    height: 2.h,
                                    color: Colors.black,
                                  )
                                : Container(
                                    height: 2.h,
                                    width: 61.w,
                                  )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            pressed1 = false;
                            pressed2 = false;
                            pressed3 = true;
                            pressed4 = false;
                            pressed5 = false;
                            pageController.jumpToPage(2);
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "??????, ????????????",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: pressed3
                                      ? Colors.black
                                      : const Color(0xffB1B1B1)),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            pressed3
                                ? Container(
                                    width: 121.w,
                                    height: 2.h,
                                    color: Colors.black,
                                  )
                                : Container(
                                    height: 2.h,
                                    width: 121.w,
                                  )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            pressed1 = false;
                            pressed2 = false;
                            pressed3 = false;
                            pressed4 = true;
                            pressed5 = false;
                            pageController.jumpToPage(3);
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "??????",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: pressed4
                                      ? Colors.black
                                      : const Color(0xffB1B1B1)),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            pressed4
                                ? Container(
                                    width: 51.w,
                                    height: 2.h,
                                    color: Colors.black,
                                  )
                                : Container(
                                    height: 2.h,
                                    width: 51.w,
                                  )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            pressed1 = false;
                            pressed2 = false;
                            pressed3 = false;
                            pressed4 = false;
                            pressed5 = true;
                            pageController.jumpToPage(4);
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "????????????",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: pressed5
                                      ? Colors.black
                                      : const Color(0xffB1B1B1)),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            pressed5
                                ? Container(
                                    width: 91.w,
                                    height: 2.h,
                                    color: Colors.black,
                                  )
                                : Container(
                                    height: 2.h,
                                    width: 91.w,
                                  )
                          ],
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10000.h,
                child: PageView(
                  controller: pageController,
                  onPageChanged: ((value) {
                    try {
                      if (value == 0) {
                        setState(() {
                          pressed1 = true;
                          pressed2 = false;
                          pressed3 = false;
                          pressed4 = false;
                          pressed5 = false;
                        });
                      } else if (value == 1) {
                        setState(() {
                          pressed1 = false;
                          pressed2 = true;
                          pressed3 = false;
                          pressed4 = false;
                          pressed5 = false;
                        });
                      } else if (value == 2) {
                        setState(() {
                          pressed1 = false;
                          pressed2 = false;
                          pressed3 = true;
                          pressed4 = false;
                          pressed5 = false;
                        });
                      } else if (value == 3) {
                        setState(() {
                          pressed1 = false;
                          pressed2 = false;
                          pressed3 = false;
                          pressed4 = true;
                          pressed5 = false;
                        });
                      } else if (value == 4) {
                        setState(() {
                          pressed1 = false;
                          pressed2 = false;
                          pressed3 = false;
                          pressed4 = false;
                          pressed5 = true;
                        });
                      }
                    } catch (e) {
                      print(e.toString());
                    }
                  }),
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Google Play",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 110.w,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("images/playstore1.png"),
                                    SizedBox(
                                      width: 50.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "?????? ????????? ?????? 5,000???",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("6,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("images/playstore1.png"),
                                    SizedBox(
                                      width: 50.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "?????? ????????? ?????? 10,000???",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("12,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '????????????',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 110.w,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/culture.png",
                                      scale: 0.8,
                                    ),
                                    SizedBox(
                                      width: 75.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "???????????? 5,000???",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("6,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/culture.png",
                                      scale: 0.8,
                                    ),
                                    SizedBox(
                                      width: 75.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "???????????? 10,000???",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("12,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '????????? ?????????',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 110.w,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/shinsegae.png",
                                      scale: 0.8,
                                    ),
                                    SizedBox(
                                      width: 45.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "????????? ????????? ????????? 5,000???",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("6,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/shinsegae.png",
                                      scale: 0.8,
                                    ),
                                    SizedBox(
                                      width: 45.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "????????? ????????? ????????? 10,000???",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("12,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                    // 111111111111111111111111111111

                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "CU",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 41.w,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("images/triangle.png"),
                                    SizedBox(
                                      width: 50.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "CU) BIG ?????? ?????? ????????????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("1,500 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("images/triangle1.png"),
                                    SizedBox(
                                      width: 75.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "CU) ???????????? ?????????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("3,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'GS25',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 61.w,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/triangle2.png",
                                    ),
                                    SizedBox(
                                      width: 80.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "GS25) ????????? ?????????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("1,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Image.asset(
                                      "images/triangle3.png",
                                    ),
                                    SizedBox(
                                      width: 85.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "GS25) ???????????? 355ml",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("2,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '???????????????',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 91.w,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/triangle4.png",
                                    ),
                                    SizedBox(
                                      width: 65.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "???????????????) ???????????? ??????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("2,800 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Image.asset(
                                      "images/triangle5.png",
                                    ),
                                    SizedBox(
                                      width: 75.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "???????????????) ???????????????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("1,900 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),

                    //222222222222222222222222222

                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "???????????????",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 91.w,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("images/a1.png"),
                                    SizedBox(
                                      width: 80.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "PB) ????????? ???????????????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("4,500 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("images/a2.png"),
                                    SizedBox(
                                      width: 55.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "PB) ???????????? ????????? ?????????..",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("1,200 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '????????????',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 81.w,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/a3.png",
                                    ),
                                    SizedBox(
                                      width: 50.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "????????????) ?????? ????????? ??????(3???)",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("1,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Image.asset(
                                      "images/a4.png",
                                    ),
                                    SizedBox(
                                      width: 65.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "????????????) ??? ????????? ?????????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("3,500 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '????????? ??????',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 91.w,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/a5.png",
                                    ),
                                    SizedBox(
                                      width: 60.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "?????????) ?????? ?????????(ICE)",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("4,800 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/a6.png",
                                    ),
                                    SizedBox(
                                      width: 60.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "?????????) ???????????????(Hot)",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("1,900 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                    //333333333333333333333

                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "KFC",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 91.w,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("images/b1.png"),
                                    SizedBox(
                                      width: 60.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "KFC) ????????????????????? 8??????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("2,5000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("images/b2.png"),
                                    SizedBox(
                                      width: 25.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "PB) ??????????????????????????? 3??????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("3,200 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'BHC',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 81.w,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/b3.png",
                                    ),
                                    SizedBox(
                                      width: 80.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "BHC) ?????????-???",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("20,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/b4.png",
                                    ),
                                    SizedBox(
                                      width: 80.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "BHC) ?????????-??????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("22,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '????????? ??????',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 91.w,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/b5.png",
                                    ),
                                    SizedBox(
                                      width: 65.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "?????????) ??????????????? ??????-L",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("31,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/b6.png",
                                      scale: 1.05,
                                    ),
                                    SizedBox(
                                      width: 50.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "?????????) ????????? ????????? ??????-L",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("37,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                    //4444444444444444444444

                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "??????????????????",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 121.w,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("images/c1.png"),
                                    SizedBox(
                                      width: 70.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kakao) ?????????????????? 3000??????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("3,0000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("images/c1.png"),
                                    SizedBox(
                                      width: 65.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kakao) ?????????????????? 5000??????",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("5,000 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'GENIE',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 81.w,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/c2.png",
                                    ),
                                    SizedBox(
                                      width: 90.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Genie) ????????????(1??????)",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("9,500 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "images/c2.png",
                                    ),
                                    SizedBox(
                                      width: 72.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Genie) ???????????? 50???(1??????)",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/coin.png",
                                              scale: 1.3,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            const Text("8,800 ????????????")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 50.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Spotify',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(0.8)),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 2.h,
                                    width: 91.w,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "images/c3.png",
                                      ),
                                      SizedBox(
                                        width: 55.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Spotify) ??????????????? ????????????(3??????)",
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "images/coin.png",
                                                scale: 1.3,
                                              ),
                                              SizedBox(
                                                width: 7.w,
                                              ),
                                              const Text("36,000 ????????????")
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "images/c3.png",
                                        scale: 1.05,
                                      ),
                                      SizedBox(
                                        width: 55.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Spotify) ??????????????? ????????????(3??????)",
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "images/coin.png",
                                                scale: 1.3,
                                              ),
                                              SizedBox(
                                                width: 7.w,
                                              ),
                                              const Text("72,000 ????????????")
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                    //555555555555555555555
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
