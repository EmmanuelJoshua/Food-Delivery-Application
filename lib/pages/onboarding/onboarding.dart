import 'package:cloudfift_assessment/pages/onboarding/viewmodels/onboarding_viewmodel.dart';
import 'package:cloudfift_assessment/utils/size_config.dart';
import 'package:cloudfift_assessment/utils/theme.dart';
import 'package:cloudfift_assessment/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder<OnboardingViewModel>.reactive(
      disposeViewModel: true,
      builder: (context, model, child) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          body: Stack(
            children: [
              Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/onboarding_bg.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Container(
                      child: SvgPicture.asset(
                        'assets/icon_images/play_icon.svg',
                      ),
                      height: getProportionateScreenHeight(72),
                      width: getProportionateScreenWidth(72),
                    ),
                    SizeConfig.orientation == Orientation.landscape
                        ? SizedBox(
                            height: getProportionateScreenHeight(40),
                          )
                        : SizedBox(
                            height: getProportionateScreenHeight(70),
                          ),
                    SizedBox(
                      width: getProportionateScreenWidth(330),
                      child: Text(
                        'Yori is here to serve you anytime anyday. ',
                        softWrap: true,
                        textAlign: TextAlign.center,
                      )
                          .applyStyle(
                              color: Colors.white,
                              fontSize: getProportionateResponsiveSize(25),
                              height: 1.2,
                              fontWeight: FontWeight.w700)
                          .wrapCenter(),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(225),
                      child: Text(
                        'Qualified caterers ready to cater for your parties anytime anyday. ',
                        softWrap: true,
                        textAlign: TextAlign.center,
                      )
                          .applyStyle(
                              color: Colors.white,
                              fontSize: getProportionateResponsiveSize(14),
                              height: 1.4,
                              fontWeight: FontWeight.w500)
                          .wrapCenter(),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    DefaultButton(
                      text: 'Sign up',
                      onPress: () {
                        model.toSignup();
                      },
                    ),
                    SizeConfig.orientation == Orientation.landscape
                        ? SizedBox(
                            height: getProportionateScreenHeight(17),
                          )
                        : SizedBox(
                            height: getProportionateScreenHeight(20),
                          ),
                    DefaultButtonOutlined(
                      text: 'Login',
                    ),
                    SizeConfig.orientation == Orientation.landscape
                        ? SizedBox(
                            height: getProportionateScreenHeight(20),
                          )
                        : SizedBox(
                            height: getProportionateScreenHeight(40),
                          ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      viewModelBuilder: () => OnboardingViewModel(),
    );
  }
}
