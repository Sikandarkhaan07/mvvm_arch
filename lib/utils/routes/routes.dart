import 'package:flutter/material.dart';
import 'package:mvvm_arch/utils/routes/routes_name.dart';
import 'package:mvvm_arch/view/home_screen.dart';
import 'package:mvvm_arch/view/login_screen.dart';
import 'package:mvvm_arch/view/signup_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RoutesName.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No route defined.'),
                  ),
                ));
    }
  }
}
