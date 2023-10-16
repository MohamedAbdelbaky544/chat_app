import 'package:chat_app/presention/controller/chat_app_cubit.dart';
import 'package:chat_app/presention/view/auth/login_screen.dart';
import 'package:chat_app/presention/view/home/home_screen.dart';
import 'package:chat_app/presention/view/widget/custom_button.dart';
import 'package:chat_app/presention/view/widget/custom_text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SiginUpBody extends StatelessWidget {
  const SiginUpBody({super.key});
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  static TextEditingController nameController = TextEditingController();
  static final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatAppCubit, ChatAppState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const HomeScreen();
          }));
        }
      },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const LoginScreen();
            }));
            return true;
          },
          child: Form(
            key: formkey,
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
                        controller: nameController,
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
                        obscureText:
                            ChatAppCubit.get(context).isvisableForSignUp,
                        suffixIcon: IconButton(
                          icon: ChatAppCubit.get(context).isvisableForSignUp
                              ? const Icon(
                                  CupertinoIcons.eye_slash,
                                  color: Color(0xffC09CAA),
                                )
                              : const Icon(
                                  CupertinoIcons.eye,
                                  color: Color(0xffC09CAA),
                                ),
                          onPressed: () {
                            ChatAppCubit.get(context).isvisableForSignUpFunc();
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  child: state is SignupLoading
                      ? const Center(
                          child: CircularProgressIndicator.adaptive(
                            valueColor:
                                AlwaysStoppedAnimation(Color(0xffC09CAA)),
                          ),
                        )
                      : CutomButton(
                          text: 'Register',
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              ChatAppCubit.get(context).userRegister(
                                userName: nameController.text,
                                email: emailController.text,
                                password: passwordController.text,
                              );
                            }
                          },
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
