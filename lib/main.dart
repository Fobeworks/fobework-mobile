import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peymo/di.dart' as di;

import 'core/core.dart';
import 'multi_bloc.dart';
import 'src/domain/common/storage/local_storage.dart';
import 'src/presentation/controllers/observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = PeymoBlocObserver();
  di.init();
  LocalDataStorageImpl().init();

  runApp(MultiBlocProvider(
    providers: MultiBloc.allBlocProviders,
    child: const PeymoConfig(),
  ));
}
