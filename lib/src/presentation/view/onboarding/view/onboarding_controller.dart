part of '../onboarding_barrel.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const String route = '/onboard';
  static const String name = 'onboard';

  @override
  State<OnboardingScreen> createState() => OnboardingController();
}

class OnboardingController extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  final localStorage = di<LocalDataStorage>();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  continueButton() {
    localStorage
        .saveData(onboardingkey, onboardingkey)
        .then((value) => context.go(SignupScreen.route));
  }

  login() {
    localStorage
        .saveData(onboardingkey, onboardingkey)
        .then((value) => context.go(LoginScreen.route));
  }

  @override
  Widget build(BuildContext context) {
    return _OnboardingView(this);
  }
}
