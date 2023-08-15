part of '../signup_barrel.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  static const String path = '/signup';
  static const String name = 'signup';

  @override
  State<SignupScreen> createState() => SignupController();
}

class SignupController extends State<SignupScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isCheck = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  navigateToForgotPassword() {}

  navigateToLogin() {
    context.goNamed(LoginScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return _SignupView(this);
  }
}
