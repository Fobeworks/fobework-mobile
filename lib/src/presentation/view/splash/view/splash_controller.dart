part of '../splash_barrel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String route = '/';
  static const String name = 'splash';

  @override
  State<SplashScreen> createState() => SplashController();
}

class SplashController extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 3));

  _startDelay() {
    _animationController.forward().whenComplete(() => _goNext());
  }

  _goNext() {
    context.go(OnboardingScreen.route);
  }

  @override
  Widget build(BuildContext context) {
    return _SplashView(this);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
