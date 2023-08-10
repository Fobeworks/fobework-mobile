import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peymo/di.dart';

import 'core/core.dart';
import 'src/business_logic/multi_bloc.dart';
import 'src/business_logic/observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = PeymoBlocObserver();
  ServiceLocator.init();

  runApp(MultiBlocProvider(
    providers: MultiBloc.allBlocProviders,
    child: const PeymoConfig(),
  ));
}
