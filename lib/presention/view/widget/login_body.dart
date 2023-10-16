import 'package:chat_app/presention/controller/chat_app_cubit.dart';
import 'package:chat_app/presention/view/auth/signup_screen.dart';
import 'package:chat_app/presention/view/widget/custom_button.dart';
import 'package:chat_app/presention/view/widget/custom_text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatAppCubit, ChatAppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const SignUpScreen();
            }));
            return true;
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Log in to your account',
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
                          'E-mail',
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
                      hintText: 'Enter your email',
                      controller: emailController,
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
                      obscureText: ChatAppCubit.get(context).isvisable,
                      suffixIcon: IconButton(
                        icon: ChatAppCubit.get(context).isvisable
                            ? const Icon(
                                CupertinoIcons.eye_slash,
                                color: Color(0xffC09CAA),
                              )
                            : const Icon(
                                CupertinoIcons.eye,
                                color: Color(0xffC09CAA),
                              ),
                        onPressed: () {
                          ChatAppCubit.get(context).isVisiableFunc();
                        },
                      ),
                      controller: passwordController,
                      validator: (value) {
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget password?',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: const Color(0xffC09CAA),
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
                  text: 'Sign in',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
