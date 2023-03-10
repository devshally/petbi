import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class FindAccountScreen extends StatelessWidget {
  const FindAccountScreen({super.key});

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
          text: 'Find your Account',
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
                  'Enter the name you registered with, to find your\nPetBi account',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.left,
            ),
            S.h(62.h),
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
            S.h(386.h),
            MyButton.fill(
              context: context,
              onPressed: () {},
              text: 'Send',
            ),
          ],
        ),
      ),
    );
  }
}
