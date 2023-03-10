import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              S.h(40.h),
              TextView(
                text: 'Create your PetBi Account',
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
              S.h(50.h),
              TextView(
                text: 'Full-Name',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              S.h(16.h),
              MyTextField(
                controller: TextEditingController(),
                hint: 'Enter your full name',
              ),
              S.h(24.h),
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
              S.h(24.h),
              TextView(
                text: 'Create Password',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              S.h(16.h),
              MyTextField(
                controller: TextEditingController(),
                hint: 'Password',
                obscure: true,
                suffixIcon: const Icon(Icons.visibility_off_outlined),
              ),
              S.h(242.h),
              MyButton.fill(
                context: context,
                onPressed: () => context.router.push(
                  const EmailVerificationRoute(),
                ),
                text: 'Sign Up',
              ),
              S.h(10.h),
              TextButton(
                onPressed: () => context.router.push(
                  const LoginRoute(),
                ),
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                ),
                child: Text.rich(
                  TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: ' Log In',
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
      ),
    );
  }
}
