import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peymo/injection_container.dart' as di;

import 'core/core.dart';
import 'multi_bloc.dart';
import 'src/presentation/controllers/observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = PeymoBlocObserver();
  di.init();

  runApp(MultiBlocProvider(
    providers: MultiBloc.allBlocProviders,
    child: const PeymoConfig(),
  ));
}
