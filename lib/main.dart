import 'package:cloudfift_assessment/locator.dart';
import 'package:cloudfift_assessment/pages/onboarding/splashscreen.dart';
import 'package:cloudfift_assessment/router.dart';
import 'package:cloudfift_assessment/services/navigation_services.dart';
import 'package:cloudfift_assessment/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  //Setup the get it locator
  setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    overrideDeviceColors();

    return MaterialApp(
      title: 'Cloudfift Assessment',
      debugShowCheckedModeBanner: false,
      theme: context.themeData,
      onGenerateRoute: AppRouter.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      home: SplashScreen(),
    );
  }
}
