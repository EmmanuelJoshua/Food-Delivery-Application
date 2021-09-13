import 'package:cloudfift_assessment/constants/routing_constant.dart';
import 'package:cloudfift_assessment/locator.dart';
import 'package:cloudfift_assessment/router.dart';
import 'package:cloudfift_assessment/services/navigation_services.dart';
import 'package:cloudfift_assessment/utils/colors.dart';
import 'package:cloudfift_assessment/utils/size_config.dart';
import 'package:cloudfift_assessment/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: context.themeData,
      onGenerateRoute: AppRouter.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
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
  final NavigationService _navigationService = locator<NavigationService>();

  @override
  void initState() {
    load();
    super.initState();
  }

  void load() async {
    //To delay the splash screen for 4 seconds
    await Future.delayed(Duration(seconds: 4));
    _navigationService.navigateToReplace(OnboardingViewRoute);
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
              SizedBox(
                height: getProportionateScreenHeight(80),
              ),
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        child: Image.asset('assets/images/splash_logo.png'),
                        height: getProportionateScreenHeight(109),
                        width: getProportionateScreenWidth(166),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 55,
                      child: Opacity(
                        opacity: 0.2,
                        child: Container(
                          child: Image.asset('assets/images/splash_bg1.png'),
                          height: getProportionateScreenHeight(52),
                          width: getProportionateScreenWidth(47),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      right: 55,
                      child: Opacity(
                        opacity: 0.2,
                        child: Container(
                          child: Image.asset('assets/images/splash_bg1.png'),
                          height: getProportionateScreenHeight(52),
                          width: getProportionateScreenWidth(47),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 55,
                      child: Opacity(
                        opacity: 0.1,
                        child: Container(
                          child: Image.asset('assets/images/splash_bg1.png'),
                          height: getProportionateScreenHeight(52),
                          width: getProportionateScreenWidth(47),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      right: 55,
                      child: Container(
                        child: Image.asset('assets/images/splash_bg2.png'),
                        height: getProportionateScreenHeight(52),
                        width: getProportionateScreenWidth(52),
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
                            fontSize: getProportionateResponsiveSize(13),
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
