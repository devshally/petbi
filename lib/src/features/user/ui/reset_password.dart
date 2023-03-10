import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        leadingWidth: 45,
        title: TextView(
          color: Colors.black,
          text: 'Reset Password',
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            S.h(18.h),
            TextView(
              text: 'New Password',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            S.h(16.h),
            MyTextField(
              controller: TextEditingController(),
              hint: 'Enter your password',
              obscure: true,
              suffixIcon: const Icon(Icons.visibility_off_outlined),
            ),
            S.h(32.h),
            TextView(
              text: 'Re-Enter Passowrd',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
            S.h(16.h),
            MyTextField(
              controller: TextEditingController(),
              hint: 'Enter your password',
              obscure: true,
              suffixIcon: const Icon(Icons.visibility_off_outlined),
            ),
            S.h(353.h),
            MyButton.fill(
              context: context,
              onPressed: () => context.router.replace(
                const BottomNavigationRoute(),
              ),
              text: 'Reset',
            ),
          ],
        ),
      ),
    );
  }
}
