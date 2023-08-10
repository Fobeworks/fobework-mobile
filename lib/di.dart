import 'package:get_it/get_it.dart';

import 'src/business_logic/bloc/bloc_exports.dart';

GetIt di = GetIt.instance;

class ServiceLocator {
  static void init() {
    // Onboarding Bloc
    di.registerFactory<OnBoardingBloc>(() => OnBoardingBloc());
  }
}
