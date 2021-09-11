import 'package:cloudfift_assessment/pages/authentication/signup.dart';
import 'package:cloudfift_assessment/utils/navigator.dart';
import 'package:cloudfift_assessment/utils/size_config.dart';
import 'package:cloudfift_assessment/widgets/buttons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
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
                  height: getProportionateResponsiveSize(72),
                  width: getProportionateResponsiveSize(72),
                ),
                SizedBox(
                  height: getProportionateResponsiveSize(70),
                ),
                SizedBox(
                  width: getProportionateResponsiveSize(330),
                  child: Wrap(
                    children: [
                      Text('Yori is here to serve you anytime anyday. ',
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 26,
                              height: 1.2,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateResponsiveSize(15),
                ),
                SizedBox(
                  width: getProportionateResponsiveSize(225),
                  child: Wrap(
                    children: [
                      Text(
                          'Qualified caterers ready to cater for your parties anytime anyday. ',
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateResponsiveSize(15),
                ),
                DefaultButton(
                  text: 'Sign up',
                  onPress: () {
                    navigator.pushTo(SignUp());
                  },
                ),
                SizedBox(
                  height: getProportionateResponsiveSize(20),
                ),
                DefaultButtonOutlined(
                  text: 'Login',
                ),
                SizedBox(
                  height: getProportionateResponsiveSize(40),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//           SizedBox(
//             height: 20,
//           ),
//           SizedBox(
//             width: 130,
//             child: DefaultButtonIcon(
//               text: 'Restaurant',
//               iconAsset: 'assets/icon_images/dish2_icon.svg',
//               color: buttonTwoColor,
//               isLight: false,
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
        
