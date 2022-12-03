import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iot/screens/loading.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<Trash> createState() => _TrashState();
}

class _TrashState extends State<Trash> {
  final ScrollController _scrollController = ScrollController();
  int i = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> carouselList = [
      InkWell(
        onTap: () {},
        child: Container(
          width: 300.w,
          height: 420.h,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1.w),
              borderRadius: BorderRadius.all(Radius.circular(10.r))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Image.asset(
                "images/nolabel.png",
                scale: 1.3,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40.h),
                child: Text(
                  "페트병(라벨 X)",
                  style:
                      TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
      InkWell(
        onTap: () {},
        child: Container(
          width: 300.w,
          height: 420.h,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1.w),
              borderRadius: BorderRadius.all(Radius.circular(10.r))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Image.asset(
                "images/plastic.png",
                scale: 1.2,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40.h),
                child: Text(
                  "페트병(라벨 O)",
                  style:
                      TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
      InkWell(
        onTap: () {},
        child: Container(
          width: 300.w,
          height: 420.h,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1.w),
              borderRadius: BorderRadius.all(Radius.circular(10.r))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Image.asset(
                "images/clean.png",
                scale: 1.3,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40.h),
                child: Text(
                  "깨끗한 커피컵 (페트만)",
                  style:
                      TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
      InkWell(
        onTap: () {},
        child: Container(
          width: 300.w,
          height: 420.h,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1.w),
              borderRadius: BorderRadius.all(Radius.circular(10.r))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Image.asset(
                "images/dirty.png",
                scale: 1.3,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40.h),
                child: Text(
                  "이물질 있는 페트병 (페트만)",
                  style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SingleChildScrollView(
        controller: _scrollController,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 19.w, bottom: 39.h, top: 48.h),
                    child: Text(
                      "분리수거 선택",
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: 400.h,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      onPageChanged: ((index, reason) {
                        setState(() {
                          i = index;
                        });
                      })),
                  items: carouselList,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 150.w, right: 150.w, top: 50.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 15.h,
                      width: 15.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: i == 0 ? Colors.black : const Color(0xffB1B1B1),
                      ),
                    ),
                    Container(
                      height: 15.h,
                      width: 15.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: i == 1 ? Colors.black : const Color(0xffB1B1B1),
                      ),
                    ),
                    Container(
                      height: 15.h,
                      width: 15.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: i == 2 ? Colors.black : const Color(0xffB1B1B1),
                      ),
                    ),
                    Container(
                      height: 15.h,
                      width: 15.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: i == 3 ? Colors.black : const Color(0xffB1B1B1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Loading()));
                  },
                  child: const Text("다음"))
            ],
          ),
        ),
      ),
    );
  }
}
