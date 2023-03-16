import 'package:flutter/material.dart';
import 'package:petbi/src/bottom%20navigation/home/widgets/pet_card_widget.dart';
import 'package:petbi/src/core/resources/resources.dart';
import 'package:petbi/src/core/resources/widgets/bottom_navigation_bar/state/bottom_navigation_state.dart';
import 'package:petbi/src/core/resources/widgets/search_bar_widget.dart';
import 'package:petbi/src/core/resources/widgets/sliver_sticky_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavigationCubit = context.watch<BottomNavigationCubit>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(padding),
          child: NestedScrollView(
            physics: const ClampingScrollPhysics(),
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: 100.h,
                  leading: InkWell(
                    onTap: () {
                      bottomNavigationCubit.zoomController.toggle!();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: SvgPicture.asset(AppImages.menuIcon),
                    ),
                  ),
                  leadingWidth: 20.w,
                  titleSpacing: 20.w,
                  centerTitle: false,
                  title: TextView(
                    text: 'Welcome',
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ];
            },
            body: Builder(builder: (BuildContext context) {
              return CustomScrollView(
                slivers: [
                  const SliverStickyHeader(
                    child: SearchBarWidget(),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        S.h(48.h),
                        TextView(
                          text: 'Newest Pet',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        S.h(21.h),
                      ],
                    ),
                  ),
                  SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: .58,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return const PetCardWidget();
                      },
                      childCount: 20,
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
