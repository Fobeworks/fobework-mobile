import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peymo/injection_container.dart';

import 'src/presentation/controllers/bloc/bloc_exports.dart';

class MultiBloc {
  static get allBlocProviders => [
        BlocProvider<OnBoardingBloc>(create: (context) => di<OnBoardingBloc>()),
      ];
}
