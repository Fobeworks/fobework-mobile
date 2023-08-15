import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peymo/src/domain/common/storage/local_storage.dart';

import '../../src/presentation/view/view_barrel.dart';

export 'package:go_router/go_router.dart';

class AppRouter {
  static final RouterConfig<Object> routerConfig = RouterConfig(
    routerDelegate: router.routerDelegate,
    backButtonDispatcher: router.backButtonDispatcher,
    routeInformationParser: router.routeInformationParser,
    routeInformationProvider: router.routeInformationProvider,
  );

  static GoRouter get router => _router;

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
}

GlobalKey<NavigatorState> get _navigatorKey => GlobalKey<NavigatorState>();

final GoRouter _router = GoRouter(
  navigatorKey: _navigatorKey,
  initialLocation: SplashScreen.path,
  debugLogDiagnostics: true,
  redirect: (BuildContext context, GoRouterState state) async {
    print(state.matchedLocation);
    print(await LocalDataStorage.instance.getFirstTime());
    if (state.matchedLocation == LoginScreen.path) {
      if (await LocalDataStorage.instance.getFirstTime()) {
        return OnboardingScreen.path;
      } else {
        // if (await LocalDataStorage.instance.getLoggedIn()) {

        // } else {
        return LoginScreen.path;
        // }
      }
    }
    return null;
  },
  routes: [
    GoRoute(
      path: SplashScreen.path,
      name: SplashScreen.name,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: OnboardingScreen.path,
      name: OnboardingScreen.name,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: LoginScreen.path,
      name: LoginScreen.name,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity:
                  CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: SignupScreen.path,
      name: SignupScreen.name,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const SignupScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity:
                  CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
  ],
);
