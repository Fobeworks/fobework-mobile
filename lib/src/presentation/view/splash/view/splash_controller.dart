part of '../splash_barrel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String route = '/splash';
  static const String name = 'splash';

  @override
  State<SplashScreen> createState() => SplashController();
}

class SplashController extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return _SplashView(this);
  }
}
