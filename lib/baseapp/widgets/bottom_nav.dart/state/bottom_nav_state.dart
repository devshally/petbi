import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_state.freezed.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  final coupleScafoldKey = GlobalKey<ScaffoldState>();

  final plannerScafoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;
  // List<Widget> currentStack = plannerBottomNavRoutes;
  // Widget currentDrawer = const PlannerDrawer();
  BottomNavCubit() : super(const BottomNavState());

  changeIndex(int index) {
    currentIndex = index;

    emit(state.copyWith(data: index));
  }

  toggleCoupleDrawer() {
    if (coupleScafoldKey.currentState?.isDrawerOpen ?? false) {
      coupleScafoldKey.currentState?.closeDrawer();
    } else {
      coupleScafoldKey.currentState?.openDrawer();
    }
  }

  togglePlannerrawer() {
    if (plannerScafoldKey.currentState?.isDrawerOpen ?? false) {
      plannerScafoldKey.currentState?.closeDrawer();
    } else {
      plannerScafoldKey.currentState?.openDrawer();
    }
  }

  changeIndexStack(bool plannerView) {
    if (plannerView) {
      // currentStack = plannerBottomNavRoutes;
      // currentDrawer = const PlannerDrawer();
      // emit(state.copyWith(data: '$currentStack $currentDrawer'));
    } else {
      // currentStack = pCoupleBottomNavRoutes;
      // currentDrawer = const PCouplesDrawer();
      // emit(state.copyWith(data: '$currentStack $currentDrawer'));
    }
  }
}

@freezed
abstract class BottomNavState with _$BottomNavState {
  const factory BottomNavState({
    dynamic data,
  }) = _BottomNavState;
}
