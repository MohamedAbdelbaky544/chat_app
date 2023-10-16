import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class TopOScreen extends StatelessWidget {
  const TopOScreen(
      {super.key, this.image = 'assets/images/Rectangle 1136.png'});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: Stack(
        children: [
          Lottie.asset('assets/animation/animation_lnrpmpoj (1).json'),
        ],
      ),
    );
  }
}
