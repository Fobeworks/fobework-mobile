import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peymo/di.dart';

import 'bloc/bloc_exports.dart';

class MultiBloc {
  static get allBlocProviders => [
        BlocProvider<OnBoardingBloc>(create: (context) => di<OnBoardingBloc>()),
      ];
}
