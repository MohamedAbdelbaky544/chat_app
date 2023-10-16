import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.keyboardType,
    required this.hintText,
    required this.controller,
    required this.validator,
    required this.onChanged,
    this.readOnly = false,
    this.suffixIcon = const SizedBox.shrink(),
    this.obscureText = false,
  });
  final TextInputType keyboardType;
  final String hintText;
  final Widget suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool readOnly;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      readOnly: readOnly,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: TextStyle(
        color: const Color(0xff2A2B2E),
        fontFamily: 'Inter',
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: const Color(0xff808194),
          fontFamily: 'Inter',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 80, 39, 55),
            width: 1.sp,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: const Color(0xff808194),
            width: 0.5.sp,
          ),
        ),
      ),
    );
  }
}
