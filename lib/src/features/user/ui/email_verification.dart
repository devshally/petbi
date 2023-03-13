import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        leadingWidth: 45,
        title: TextView(
          color: Colors.black,
          text: 'Email Verification',
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            S.h(40.h),
            TextView(
              text: 'Enter-Code',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            S.h(16.h),
            MyTextField(
              controller: TextEditingController(),
              hint: '',
            ),
            S.h(446.h),
            MyButton.fill(
              context: context,
              onPressed: () => context.router.replace(
                const BottomNavigationRoute(),
              ),
              text: 'Send',
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                visualDensity: VisualDensity.compact,
              ),
              child: Text.rich(
                TextSpan(
                  text: 'Didn\'t get any code?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: ' Resend',
                      style: TextStyle(
                        color: const Color(0xffF10E60),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
