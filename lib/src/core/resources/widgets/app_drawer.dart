import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            S.h(40.h),
            SvgPicture.asset(
              AppImages.closeIcon,
              height: 15.h,
              width: 15.w,
            ),
            S.h(100.h),
            const AppDrawerWidget(
              text: 'Add Pet',
              icon: AppImages.addIcon,
            ),
            S.h(52.h),
            const AppDrawerWidget(
              text: 'Add Location',
              icon: AppImages.addLocationIcon,
            ),
            S.h(52.h),
            const AppDrawerWidget(
              text: 'Notification',
              icon: AppImages.notificationIcon,
            ),
            S.h(52.h),
            const AppDrawerWidget(
              text: 'Settings',
              icon: AppImages.settingsIcon,
            ),
            S.h(52.h),
            const AppDrawerWidget(
              text: 'Log Out',
              icon: AppImages.logoutIcon,
            ),
          ],
        ),
      ),
    );
  }
}

class AppDrawerWidget extends StatelessWidget {
  final String text;
  final String icon;
  const AppDrawerWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          height: 20.h,
          width: 20.w,
        ),
        S.w(20.w),
        TextView(
          color: Colors.white,
          text: text,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
