import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavWidget extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  const BottomNavWidget({super.key, required this.items});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  @override
  Widget build(BuildContext context) {
    // final state = context.watch<BottomNavCubit>();
    // final profileCubit = context.watch<ProfileCubit>();
    // final accountCubit = context.watch<AccountCubit>();
    return Container(
      decoration: BoxDecoration(color: Colors.white,
          // borderRadius: BorderRadius.circular(10),
          // borderRadius: const BorderRadius.only(
          //   topLeft: Radius.circular(16),
          //   topRight: Radius.circular(16),
          // ),
          boxShadow: [
            BoxShadow(
                blurRadius: 10.5,
                spreadRadius: 10,
                // blurStyle: BlurStyle.outer,
                color: Colors.black.withOpacity(.05),
                offset: const Offset(0, -5))
          ]),
      child: BottomNavigationBar(
        onTap: (int index) {
          // state.changeIndex(index);
          // if (index == 4) {
          //   profileCubit.getUser();
          // }
          // if (index == 0) {
          //   accountCubit.getUser();
          // }
        },
        // currentIndex: state.currentIndex,
        backgroundColor: Colors.white,
        selectedLabelStyle: const TextStyle(
          // color: disabledTextColor,
          fontWeight: FontWeight.w400,
          fontSize: 8,
        ),
        selectedItemColor: const Color.fromRGBO(9, 17, 24, 1),
        // unselectedItemColor: disabledTextColor,
        unselectedLabelStyle: const TextStyle(
          color: Color.fromRGBO(9, 17, 24, 1),
          fontWeight: FontWeight.w400,
          fontSize: 8,
        ),
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        items: widget.items,
      ),
    );
  }
}
