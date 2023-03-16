import 'package:flutter/material.dart';
import 'package:petbi/src/bottom%20navigation/home/widgets/pet_card_widget.dart';
import 'package:petbi/src/core/resources/widgets/search_bar_widget.dart';

import '../../core/resources/resources.dart';

class AdoptionScreen extends StatelessWidget {
  const AdoptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(padding),
          child: Column(
            children: [
              const SearchBarWidget(),
              S.h(32.h),
              GridView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: .58,
                ),
                itemBuilder: (context, index) {
                  return const PetCardWidget();
                },
                itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
