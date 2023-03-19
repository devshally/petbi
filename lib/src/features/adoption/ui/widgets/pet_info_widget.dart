// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';
import 'package:petbi/src/features/adoption/ui/widgets/meta_info_widget.dart';
import 'package:petbi/src/features/adoption/ui/widgets/owner_description_widget.dart';
import 'package:petbi/src/features/adoption/ui/widgets/pet_header_widget.dart';

class PetInfoDraggableWidget extends StatelessWidget {
  const PetInfoDraggableWidget({
    super.key,
    required this.url,
  });

  final String? url;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: .35,
      minChildSize: .28,
      maxChildSize: .52,
      builder: (BuildContext context, ScrollController controller) {
        return SingleChildScrollView(
          controller: controller,
          child: Container(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 10.h),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 5.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffB4B4B4),
                    ),
                  ),
                ),
                S.h(25.h),
                const PetHeaderWidget(petName: 'German Shephard'),
                S.h(16.h),
                MetaInfoWIdget(
                  icon: AppImages.locationIcon,
                  text: 'Lagos, Nigeria',
                  iconSize: 12.h,
                ),
                S.h(20.h),
                MetaInfoWIdget(
                  icon: AppImages.calendarIcon,
                  text: '2 Years',
                  iconSize: 12.h,
                ),
                S.h(25.h),
                OwnerDescriptionWidget(
                  url: url,
                  name: "Mary Jerry",
                  description:
                      'Lorem ipsum dolor sit amet consectetur. Pulvinar penatibus risus diam praesent amet viverra. Lorem ipsum dolor sit amet consectetur. Pulvinar penatibus risus diam praesent amet viverra.',
                ),
                S.h(32.h),
                Row(
                  children: [
                    Expanded(
                      child: MyButton.fill(
                        borderRadius: BorderRadius.circular(8),
                        context: context,
                        onPressed: () {},
                        text: 'Adopt',
                      ),
                    ),
                    S.w(20.w),
                    Container(
                      height: 52,
                      width: 52,
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 15.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          AppImages.messageIcon,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                S.h(30.h),
              ],
            ),
          ),
        );
      },
    );
  }
}
