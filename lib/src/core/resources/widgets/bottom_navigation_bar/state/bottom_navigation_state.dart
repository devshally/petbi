import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_state.freezed.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(const BottomNavigationState());

  int currentIndex = 0;

  changeIndex(int index) {
    currentIndex = index;

    emit(state.copyWith(data: index));
  }
}

@freezed
abstract class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState({
    dynamic data,
  }) = _BottomNavigationState;
}
