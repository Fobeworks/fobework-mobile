import 'package:get_it/get_it.dart';

import 'src/presentation/controllers/bloc/bloc_exports.dart';

GetIt di = GetIt.instance;

Future<void> init() async {
  // Onboarding Bloc
  di.registerFactory<OnBoardingBloc>(() => OnBoardingBloc());
}
