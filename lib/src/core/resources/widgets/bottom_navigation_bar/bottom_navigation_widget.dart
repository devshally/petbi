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
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10.5,
            spreadRadius: 10,
            color: Colors.black.withOpacity(.05),
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: widget.items,
        onTap: (int index) {},
        currentIndex: state.currentIndex,
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 8,
        ),
        selectedItemColor: const Color.fromRGBO(9, 17, 24, 1),
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
