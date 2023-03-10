import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/resources.dart';
import 'package:petbi/src/core/resources/widgets/bottom_navigation_bar/state/bottom_navigation_state.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<BottomNavigationCubit>();

    return Scaffold(
      body: IndexedStack(
        index: state.currentIndex,
        children: [
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: const BottomNavigationWidget(
        items: [],
      ),
    );
  }
}
