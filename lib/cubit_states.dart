import 'package:get_it/get_it.dart';
import 'package:petbi/baseapp/features/account/state/account_cubit.dart';
import 'package:petbi/cubit_states.dart';

export 'package:flutter_bloc/src/bloc_provider.dart';

getProviders(GetIt injector) {
  return <BlocProviderSingleChildWidget>[
    BlocProvider<AccountCubit>(
      create: (context) => injector<AccountCubit>(),
    ),
  ];
}
