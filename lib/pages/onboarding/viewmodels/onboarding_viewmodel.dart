import 'package:cloudfift_assessment/constants/routing_constant.dart';
import 'package:cloudfift_assessment/locator.dart';
import 'package:cloudfift_assessment/services/navigation_services.dart';
import 'package:flutter/foundation.dart';

class OnboardingViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();

  void toSignup() {
    _navigationService.navigateTo(SignupViewRoute);
  }
}
