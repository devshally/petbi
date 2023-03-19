import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';
import 'package:petbi/src/features/adoption/ui/pet_details.dart';
import 'package:petbi/src/features/adoption/ui/widgets/meta_info_widget.dart';
import '../../../features/adoption/ui/widgets/pet_header_widget.dart';

class PetCardWidget extends StatelessWidget {
  final String? url;
  const PetCardWidget({
    super.key,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PetDetailsScreen(url: url),
        ),
      ),
      child: Container(
        width: 182.w,
        padding:
            EdgeInsets.only(left: 8.w, right: 8.w, top: 10.h, bottom: 13.h),
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
                image: DecorationImage(
                  image: (url == null
                      ? const AssetImage(AppImages.onboardingImage1)
                      : NetworkImage(url!) as ImageProvider),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            S.h(12.h),
            PetHeaderWidget(
              petName: 'German Shephard',
              fontSize: 16.sp,
              iconSize: 13.w,
            ),
            S.h(10.h),
            MetaInfoWIdget(
              icon: AppImages.locationIcon,
              text: 'Lagos, Nigeria',
              iconSize: 12.h,
            ),
            S.h(10.h),
            MetaInfoWIdget(
              icon: AppImages.calendarIcon,
              text: '2 Years',
              iconSize: 12.h,
            ),
          ],
        ),
      ),
    );
  }
}
