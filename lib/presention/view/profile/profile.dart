import 'package:chat_app/presention/view/widget/profile_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/top_screen.dart';

class ProfilaScreen extends StatelessWidget {
  const ProfilaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopOScreen(
              image: 'assets/images/bolla.jpg',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              child: const ProfileBody(),
            ),
          ],
        ),
      ),
    );
  }
}
