import 'package:flutter/material.dart';

//Used to navigate in the app with named routes and without context
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {Object argument}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: argument);
  }

  Future<dynamic> navigateToReplace(String routeName, {Object argument}) {
    return navigatorKey.currentState
        .pushReplacementNamed(routeName, arguments: argument);
  }

  goBack() {
    Navigator.of(navigatorKey.currentState.context).pop();
  }
}
