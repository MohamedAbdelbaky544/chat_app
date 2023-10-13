import 'package:chat_app/presention/view/auth/login_screen.dart';
import 'package:chat_app/presention/view/widget/custom_button.dart';
import 'package:chat_app/presention/view/widget/custom_text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SiginUpBody extends StatelessWidget {
  const SiginUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const LoginScreen();
        }));
        return true;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              'Create new account',
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
                  suffixIcon: const Icon(
                    CupertinoIcons.clear_circled,
                    color: Color(0xff808194),
                  ),
                  controller: TextEditingController(),
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
                  hintText: 'Enter your E-mail',
                  suffixIcon: const Icon(
                    CupertinoIcons.clear_circled,
                    color: Color(0xff808194),
                  ),
                  controller: TextEditingController(),
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
                      'Password',
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
                  hintText: 'password',
                  suffixIcon: const Icon(
                    CupertinoIcons.eye_slash,
                    color: Color(0xff808194),
                  ),
                  controller: TextEditingController(),
                  validator: (value) {
                    return null;
                  },
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Text(
                      'Remember me',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: const Color(0xff2A2B2E),
                        fontFamily: 'Inter',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forget password?',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff2A2B2E),
                    fontFamily: 'Inter',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: CutomButton(
              text: 'Register',
              onPressed: () {},
            ),
          ),
          Row(
            children: [
              Text(
                'Already have an account? ',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: const Color(0xff2A2B2E),
                  fontFamily: 'Inter',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                child: Text(
                  'Login',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff2A2B2E),
                    fontFamily: 'Inter',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
