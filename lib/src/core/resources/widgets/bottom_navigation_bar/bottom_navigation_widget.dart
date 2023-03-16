import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';
import 'package:petbi/src/core/resources/widgets/bottom_navigation_bar/state/bottom_navigation_state.dart';

class BottomNavigationWidget extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  const BottomNavigationWidget({super.key, required this.items});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<BottomNavigationCubit>();

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: BottomNavigationBar(
        elevation: 0,
        items: widget.items,
        onTap: (int index) {
          state.changeIndex(index);
        },
        currentIndex: state.currentIndex,
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
        ),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: const Color.fromRGBO(9, 17, 24, 1),
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
        ),
        iconSize: 30.h,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
