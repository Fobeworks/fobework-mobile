part of '../onboarding_barrel.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const String path = '/onboard';
  static const String name = 'onboard';

  @override
  State<OnboardingScreen> createState() => OnboardingController();
}

class OnboardingController extends State<OnboardingScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    LocalDataStorage.instance.setFirstTime();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  continueButton() {
    debugPrint('clicked');
    context.goNamed(SignupScreen.name);

    debugPrint('clicked2');
  }

  login() {
    debugPrint('clicked');
    context.goNamed(LoginScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return _OnboardingView(this);
  }
}
