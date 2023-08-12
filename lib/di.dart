import 'package:get_it/get_it.dart';
import 'package:peymo/src/domain/common/storage/local_storage.dart';

import 'src/presentation/controllers/bloc/bloc_exports.dart';

GetIt di = GetIt.instance;

Future<void> init() async {
  // Onboarding Bloc
  di.registerFactory<OnBoardingBloc>(() => OnBoardingBloc());

  // local storage
  di.registerLazySingleton<LocalDataStorage>(() => LocalDataStorageImpl());
}
