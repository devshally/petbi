import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class PetCardWidget extends StatelessWidget {
  const PetCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 182.w,
      padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 10.h, bottom: 13.h),
      decoration: BoxDecoration(
        border: Border.all(width: .1, color: const Color(0xffD2D2D2)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 195.h,
            width: 166.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: NetworkImage(
                    'http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSvjQJGpm6T9IUnn7CuywNDZrJSjh2LX506RzWjHKmIiksdmd4Ii8rps9-bHGHcGHtgAWcfxD7nbf5zvJE'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          S.h(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextView(
                text: 'German Shepard',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              SvgPicture.asset(AppImages.favoriteIcon,
                  width: 13.w, height: 13.h),
            ],
          ),
          S.h(10.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                AppImages.locationIcon,
                width: 10.w,
                height: 12.h,
              ),
              S.w(10.w),
              TextView(
                text: 'Lagos, Nigeria',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          S.h(10.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                AppImages.calendarIcon,
                width: 10.w,
                height: 12.h,
              ),
              S.w(10.w),
              TextView(
                text: '2 Years',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
