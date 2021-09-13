import 'package:cloudfift_assessment/constants/routing_constant.dart';
import 'package:cloudfift_assessment/locator.dart';
import 'package:cloudfift_assessment/services/navigation_services.dart';
import 'package:flutter/foundation.dart';

class SplashscreenViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();

  void load() async {
    //To delay the splash screen for 4 seconds
    await Future.delayed(Duration(seconds: 4));
    _navigationService.navigateToReplace(OnboardingViewRoute);
  }
}
