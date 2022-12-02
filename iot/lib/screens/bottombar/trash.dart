import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<Trash> createState() => _TrashState();
}

class _TrashState extends State<Trash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: Center(
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
            )
          ],
        ),
      ),
    );
  }
}
