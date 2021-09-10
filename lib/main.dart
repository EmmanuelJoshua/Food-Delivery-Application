import 'package:flutter/material.dart';
import 'utils/theme.dart';
import 'utils/navigator.dart';
import 'pages/onboarding/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    overrideDeviceColors();

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: context.themeData,
      navigatorKey: navigator.key,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    load();
    super.initState();
  }

  void load() async {
    await Future.delayed(Duration(seconds: 4));
    navigator.navigateFromSplash(Onboarding());
  }

  @override
  Widget build(BuildContext context) {
    //TODO: Finish Splashscreen
    return Container();
  }
}
