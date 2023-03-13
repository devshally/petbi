// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:petbi/src/bottom%20navigation/home/home.dart';
import 'package:petbi/src/core/resources/resources.dart';
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

    return Scaffold(
      body: IndexedStack(
        index: state.currentIndex,
        children: [
          const HomeScreen(),
          Container(),
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
            label: 'Favourite',
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
    );
  }
}
