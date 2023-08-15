part of '../splash_barrel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String path = '/';
  static const String name = 'splash';

  @override
  State<SplashScreen> createState() => SplashController();
}

class SplashController extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 3));
  final localStorage = di<LocalDataStorage>();

  _startDelay() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    _animationController.forward().whenComplete(() => _goNext());
  }

  Future<void> _goNext() async {

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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }
}
