import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CutomButton extends StatelessWidget {
  const CutomButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;
  final Color color = const Color(0xffC09CAA);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(Size(345.w, 50.h)),
          backgroundColor: MaterialStateProperty.all<Color>(color)),
      onPressed: onPressed,
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: const Color(0xffffffff),
          fontFamily: 'Inter',
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
