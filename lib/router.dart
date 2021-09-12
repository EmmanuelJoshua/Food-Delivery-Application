import 'package:cloudfift_assessment/constants/routing_constant.dart';
import 'package:cloudfift_assessment/pages/authentication/signup.dart';
import 'package:cloudfift_assessment/pages/home/home.dart';
import 'package:cloudfift_assessment/pages/onboarding/onboarding.dart';
import 'package:cloudfift_assessment/pages/undefinedRoute.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case OnboardingViewRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => Onboarding(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
        break;
      case SignupViewRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => SignUp(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
        break;
      case HomepageViewRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => Home(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
        break;
      default:
        return MaterialPageRoute(
            builder: (context) => UndefinedRoute(name: settings.name));
    }
  }
}
