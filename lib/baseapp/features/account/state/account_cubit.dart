import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petbi/utilities/core/error/failure.dart';

part 'account_cubit.freezed.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(const AccountState());
}

@freezed
abstract class AccountState with _$AccountState {
  const factory AccountState({
    @Default(false) isLoading,
    Failure? error,
    dynamic data,
  }) = _AccountState;
}
