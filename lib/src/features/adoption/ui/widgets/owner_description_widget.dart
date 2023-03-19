import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class OwnerDescriptionWidget extends StatelessWidget {
  final String name;
  final String description;
  const OwnerDescriptionWidget({
    super.key,
    required this.url,
    required this.name,
    required this.description,
  });

  final String? url;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 30.r,
              backgroundImage: (url == null
                  ? const AssetImage(AppImages.onboardingImage1)
                  : NetworkImage(url!) as ImageProvider),
            ),
            S.w(10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: name,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                S.w(16.w),
                TextView(
                  color: const Color(0xff8F8F8F),
                  text: 'Owner',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ],
        ),
        S.h(16.h),
        TextView(
          text: description,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}