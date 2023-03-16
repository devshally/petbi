// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:petbi/src/bottom%20navigation/adoption/adoption.dart';
import 'package:petbi/src/bottom%20navigation/home/home.dart';
import 'package:petbi/src/core/resources/resources.dart';
import 'package:petbi/src/core/resources/widgets/app_drawer.dart';
import 'package:petbi/src/core/resources/widgets/bottom_navigation_bar/state/bottom_navigation_state.dart';

class BottomNavigationScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BottomNavigationCubit()),
      ],
      child: this,
    );
  }
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<BottomNavigationCubit>();

    return ZoomDrawer(
      angle: 0.0,
      borderRadius: 0,
      controller: state.zoomController,
      mainScreenTapClose: true,
      mainScreenScale: .5.w,
      menuBackgroundColor: const Color(0xff001A28),
      slideWidth: 280.w,
      menuScreen: const AppDrawer(),
      mainScreen: Scaffold(
        body: IndexedStack(
          index: state.currentIndex,
          children: [
            const HomeScreen(),
            const AdoptionScreen(),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: BottomNavigationWidget(
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppImages.homeIcon,
                color: Theme.of(context).primaryColor,
              ),
              icon: SvgPicture.asset(AppImages.homeIcon),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppImages.favoriteIcon,
                color: Theme.of(context).primaryColor,
              ),
              icon: SvgPicture.asset(AppImages.favoriteIcon),
              label: 'Adoption',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppImages.messageIcon,
                color: Theme.of(context).primaryColor,
              ),
              icon: SvgPicture.asset(AppImages.messageIcon),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppImages.userIcon,
                color: Theme.of(context).primaryColor,
              ),
              icon: SvgPicture.asset(AppImages.userIcon),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
