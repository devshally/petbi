// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';
import 'package:petbi/src/features/adoption/ui/widgets/pet_info_widget.dart';

class PetDetailsScreen extends StatelessWidget {
  final String? url;
  const PetDetailsScreen({
    super.key,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: (url == null
                      ? const AssetImage(AppImages.onboardingImage2)
                      : NetworkImage(url!) as ImageProvider),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => context.router.pop(),
              child: Padding(
                padding: const EdgeInsets.all(padding),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: SvgPicture.asset(AppImages.backIcon),
                ),
              ),
            ),
            PetInfoDraggableWidget(url: url),
          ],
        ),
      ),
    );
  }
}
