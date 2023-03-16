import 'package:flutter/material.dart';

import '../../../core/resources/resources.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                text: 'Log in to your PetBi Account',
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
              S.h(50.h),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: 'Password',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  TextView(
                    color: const Color(0xffF65E95),
                    text: 'Forgot password?',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    onTap: () => context.router.push(
                      const ForgotPasswordRoute(),
                    ),
                  ),
                ],
              ),
              S.h(16.h),
              MyTextField(
                controller: TextEditingController(),
                hint: 'Enter your password',
                obscure: true,
                suffixIcon: const Icon(Icons.visibility_off_outlined),
              ),
              S.h(349.h),
              MyButton.fill(
                context: context,
                onPressed: () => context.router.replace(
                  const BottomNavigationRoute(),
                ),
                text: 'Log In',
              ),
              S.h(15.h),
              TextButton(
                onPressed: () => context.router.push(
                  const SignupRoute(),
                ),
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                ),
                child: Text.rich(
                  TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: ' Sign Up',
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
