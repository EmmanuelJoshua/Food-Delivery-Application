import 'package:cloudfift_assessment/pages/onboarding/viewmodels/splashscreen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:cloudfift_assessment/utils/colors.dart';
import 'package:cloudfift_assessment/utils/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder<SplashscreenViewModel>.reactive(
      disposeViewModel: true,
      //Splashscreeen delay and move to next screen method
      onModelReady: (model) => model.load(),
      builder: (context, model, child) {
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
                              child:
                                  Image.asset('assets/images/splash_bg1.png'),
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
                              child:
                                  Image.asset('assets/images/splash_bg1.png'),
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
                              child:
                                  Image.asset('assets/images/splash_bg1.png'),
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
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, bottom: 10),
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
      },
      viewModelBuilder: () => SplashscreenViewModel(),
    );
  }
}
