import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class PetHeaderWidget extends StatefulWidget {
  final double? fontSize;
  final FontWeight? fontWeight;
  final String petName;
  final double? iconSize;
  const PetHeaderWidget({
    super.key,
    required this.petName,
    this.fontSize,
    this.fontWeight,
    this.iconSize,
  });

  @override
  State<PetHeaderWidget> createState() => _PetHeaderWidgetState();
}

class _PetHeaderWidgetState extends State<PetHeaderWidget> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextView(
          text: widget.petName,
          fontSize: widget.fontSize ?? 24.sp,
          fontWeight: widget.fontWeight ?? FontWeight.w500,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              favorite = !favorite;
            });
          },
          child: SvgPicture.asset(
            AppImages.favoriteIcon,
            height: widget.iconSize ?? 20.w,
            width: widget.iconSize ?? 20.w,
            color: favorite ? Theme.of(context).colorScheme.secondary : null,
          ),
        ),
      ],
    );
  }
}