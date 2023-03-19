import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class MetaInfoWIdget extends StatelessWidget {
  final String icon;
  final String text;
  final double iconSize;
  final double? fontSize;
  const MetaInfoWIdget({
    super.key,
    required this.icon,
    required this.text,
    required this.iconSize,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          icon,
          width: iconSize.h,
          height: iconSize.h,
        ),
        S.w(10.w),
        TextView(
          text: text,
          fontSize: fontSize ?? 12.sp,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}