import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 15,
          ),
        ),
        title: TextView(
          color: Colors.black,
          text: 'Forgotten your password?',
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextView(
              text:
                  'Enter the email address you registered with, and we’ll send a link to reset your password',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.left,
            ),
            S.h(62.h),
            TextView(
              text: 'Email Address',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            S.h(16.h),
            MyTextField(
              controller: TextEditingController(),
              hint: 'Enter your email address',
            ),
            TextButton(
              onPressed: () => context.router.push(
                const SignupRoute(),
              ),
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                visualDensity: VisualDensity.compact,
              ),
              child: Text.rich(
                TextSpan(
                  text: 'Lost Email?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: ' Find your Account',
                      style: TextStyle(
                        color: const Color(0xffF10E60),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            S.h(345.h),
            MyButton.fill(
              context: context,
              onPressed: () => context.router.push(const ResetPasswordRoute()),
              text: 'Send',
            ),
          ],
        ),
      ),
    );
  }
}
