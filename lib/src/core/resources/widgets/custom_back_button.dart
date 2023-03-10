import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pop();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: SvgPicture.asset(
          AppImages.backIcon,
        ),
      ),
    );
  }
}
