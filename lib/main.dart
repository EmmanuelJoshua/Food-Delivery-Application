import 'package:cloudfift_assessment/utils/colors.dart';
import 'package:cloudfift_assessment/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    // load();
    super.initState();
  }

  void load() async {
    await Future.delayed(Duration(seconds: 4));
    navigator.navigateFromSplash(Onboarding());
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            decoration: BoxDecoration(
              gradient: splashGradientColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Expanded(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        child: Image.asset('assets/images/splash_logo.png'),
                        height: getProportionateResponsiveSize(109),
                        width: getProportionateResponsiveSize(166),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 50,
                      child: Opacity(
                        opacity: 0.2,
                        child: Container(
                          child: Image.asset('assets/images/splash_bg1.png'),
                          height: getProportionateResponsiveSize(52),
                          width: getProportionateResponsiveSize(47),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 50,
                      child: Opacity(
                        opacity: 0.2,
                        child: Container(
                          child: Image.asset('assets/images/splash_bg1.png'),
                          height: getProportionateResponsiveSize(52),
                          width: getProportionateResponsiveSize(47),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 50,
                      child: Opacity(
                        opacity: 0.1,
                        child: Container(
                          child: Image.asset('assets/images/splash_bg1.png'),
                          height: getProportionateResponsiveSize(52),
                          width: getProportionateResponsiveSize(47),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 50,
                      child: Container(
                        child: Image.asset('assets/images/splash_bg2.png'),
                        height: getProportionateResponsiveSize(52),
                        width: getProportionateResponsiveSize(52),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, bottom: 10),
                child: Wrap(
                  children: [
                    Text(
                        'Nam eget molestie tincidunt massa morbi dolor quam tortor mi. Proin urna vitae facilisis tincidunt. ',
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 14,
                            height: 1.4,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
