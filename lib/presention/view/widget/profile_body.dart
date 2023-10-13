import 'package:chat_app/presention/view/widget/custom_button.dart';
import 'package:chat_app/presention/view/widget/custom_text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            'Mohamed Acdelbaky',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff2A2B2E),
              fontFamily: 'Inter',
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Username',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: const Color(0xff808194),
                      fontFamily: 'Inter',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              CustomTextForm(
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your Username',
                controller: TextEditingController(text: 'Mohamed Abdelbaky'),
                validator: (value) {
                  return null;
                },
                onChanged: (value) {},
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Email',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: const Color(0xff808194),
                      fontFamily: 'Inter',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              CustomTextForm(
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your Email',
                controller:
                    TextEditingController(text: 'm.elsaid54321@gmail.com'),
                validator: (value) {
                  return null;
                },
                onChanged: (value) {},
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Gender',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: const Color(0xff808194),
                      fontFamily: 'Inter',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              CustomTextForm(
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your gender',
                controller: TextEditingController(text: 'Male'),
                validator: (value) {
                  return null;
                },
                onChanged: (value) {},
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: CutomButton(
            color: const Color(0xffDC3545),
            text: 'Log out',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
