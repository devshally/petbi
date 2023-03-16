// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  bool locationSearch = false;
  List<PetType> pets = PetType.values;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 18.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffF5F5F5),
                ),
                child: TextFormField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    icon: SvgPicture.asset(AppImages.searchIcon),
                  ),
                ),
              ),
            ),
            S.w(16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffF5F5F5),
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    locationSearch = !locationSearch;
                  });
                },
                child: SvgPicture.asset(
                  AppImages.locationIcon,
                  color:
                      locationSearch == true ? const Color(0xff80C0E4) : null,
                ),
              ),
            ),
          ],
        ),
        if (locationSearch == true) ...[
          S.h(40.h),
          SizedBox(
            height: 100.h,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                        vertical: 12.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffF5F5F5),
                      ),
                      child: SvgPicture.asset(
                        pets[index].image,
                        width: 30.h,
                        height: 30.h,
                      ),
                    ),
                    TextView(
                      text: pets[index].name,
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return S.w(20.w);
              },
              itemCount: pets.length,
            ),
          ),
        ]
      ],
    );
  }
}

enum PetType {
  dog(name: "Dogs", image: AppImages.dogIcon),
  cat(name: "Cats", image: AppImages.catIcon),
  rabbit(name: "Rabbit", image: AppImages.rabbitIcon),
  bird(name: "Bird", image: AppImages.birdIcon),
  parrot(name: "Parrot", image: AppImages.parrotIcon),
  monkey(name: "Monkey", image: AppImages.monkeyIcon);

  final String name;
  final String image;

  const PetType({required this.image, required this.name});
}
