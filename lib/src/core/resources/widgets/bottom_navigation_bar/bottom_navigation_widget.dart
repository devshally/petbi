import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          fontSize: 8,
        ),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(
          color: Color.fromRGBO(9, 17, 24, 1),
          fontWeight: FontWeight.w400,
          fontSize: 8,
        ),
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
