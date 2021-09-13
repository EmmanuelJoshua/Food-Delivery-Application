import 'package:cloudfift_assessment/constants/routing_constant.dart';
import 'package:cloudfift_assessment/locator.dart';
import 'package:cloudfift_assessment/services/navigation_services.dart';
import 'package:flutter/foundation.dart';

class SignupViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();

  void toHome() {
    _navigationService.navigateToReplace(HomepageViewRoute);
  }

  void goBack() {
    _navigationService.goBack();
  }
}
