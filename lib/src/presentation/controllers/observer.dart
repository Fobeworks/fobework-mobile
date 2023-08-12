import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peymo/core/config/app_logger.dart';

class PeymoBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    // Log.info('${bloc.runtimeType} $event');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    Log.error('${bloc.runtimeType} $error');
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    // Log.info('${bloc.runtimeType} $transition');
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    Log.verbose('Created ${bloc.runtimeType}');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    Log.info('Closed ${bloc.runtimeType}');
  }
}
