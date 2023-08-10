part of '../login_barrel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String route = '/login';
  static const String name = 'login';

  @override
  State<LoginScreen> createState() => LoginController();
}

class LoginController extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return _LoginView(this);
  }
}
