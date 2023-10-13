import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopOScreen extends StatelessWidget {
  const TopOScreen(
      {super.key, this.image = 'assets/images/Rectangle 1136.png'});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.h,
      child: Stack(
        children: [
          SizedBox(
              width: double.infinity,
              height: 250.23.h,
              child: Image.asset(
                'assets/images/Frame 645.png',
                fit: BoxFit.fill,
              )),
          Positioned(
            top: 180.h,
            left: 139.w,
            child: Container(
              width: 135.w,
              height: 135.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 1.h),
                        spreadRadius: 2,
                        blurRadius: 5,
                        color: const Color(0xff000000).withOpacity(0.15)),
                  ]),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
