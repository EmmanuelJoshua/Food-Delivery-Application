import 'package:cloudfift_assessment/pages/authentication/viewmodels/signup_viewmodel.dart';
import 'package:cloudfift_assessment/utils/colors.dart';
import 'package:cloudfift_assessment/utils/size_config.dart';
import 'package:cloudfift_assessment/widgets/buttons.dart';
import 'package:cloudfift_assessment/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder<SignupViewModel>.reactive(
      disposeViewModel: true,
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    model.goBack();
                  },
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/icon_images/chevron_left_icon.svg',
                    ),
                    height: getProportionateResponsiveSize(26),
                    width: getProportionateResponsiveSize(26),
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 18, right: 20),
                child: InkWell(
                  onTap: () {
                    model.toHome();
                  },
                  child: Text('Skip Here',
                      style: GoogleFonts.lato(
                          color: textColor,
                          fontSize: getProportionateResponsiveSize(17),
                          fontWeight: FontWeight.w400)),
                ),
              )
            ],
          ),
          backgroundColor: authBgColor,
          body: ListView(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
            children: [
              Text('Sign up',
                  style: GoogleFonts.lato(
                    color: textColor,
                    fontSize: getProportionateResponsiveSize(35),
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(
                height: getProportionateResponsiveSize(15),
              ),
              Text('Complete the required registration details',
                  style: GoogleFonts.lato(
                    color: textColor,
                    fontSize: getProportionateResponsiveSize(16),
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: getProportionateResponsiveSize(25),
              ),
              _signUpForm(context),
              SizedBox(
                height: getProportionateResponsiveSize(25),
              ),
              DefaultButton(
                text: 'Continue',
                onPress: () {
                  model.toHome();
                },
              ),
              SizedBox(
                height: getProportionateResponsiveSize(25),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Opacity(
                      opacity: 0.2,
                      child: Container(
                        color: randomColor,
                        height: 1.3,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateResponsiveSize(12),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text('or continue with',
                        style: GoogleFonts.lato(
                          color: textColor3,
                          fontSize: getProportionateResponsiveSize(15),
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  SizedBox(
                    width: getProportionateResponsiveSize(12),
                  ),
                  Expanded(
                    child: Opacity(
                      opacity: 0.2,
                      child: Container(
                        color: randomColor,
                        height: 1.3,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateResponsiveSize(22),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: getProportionateResponsiveSize(149),
                    child: DefaultButtonSocial(
                      text: 'Google',
                      iconAsset: 'assets/icon_images/google_icon.svg',
                      // color: buttonTwoColor,
                    ),
                  ),
                  SizedBox(
                    width: getProportionateResponsiveSize(149),
                    child: DefaultButtonSocial(
                      text: 'Facebook',
                      iconAsset: 'assets/icon_images/facebook_icon.svg',
                      color: facebookButtonColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateResponsiveSize(50),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Already have an Account?',
                      style: GoogleFonts.lato(
                        color: textColor,
                        fontSize: getProportionateResponsiveSize(16),
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    height: getProportionateResponsiveSize(17),
                  ),
                  Row(
                    children: [
                      Text('LOGIN',
                          style: GoogleFonts.lato(
                            color: Color(0xFFF15A24),
                            fontSize: getProportionateResponsiveSize(17),
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(
                        width: getProportionateResponsiveSize(2),
                      ),
                      Container(
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: SvgPicture.asset(
                            'assets/icon_images/chevron_left_icon.svg',
                            color: Color(0xFFF15A24),
                            height: getProportionateResponsiveSize(19),
                            width: getProportionateResponsiveSize(19),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateResponsiveSize(20),
                  ),
                ],
              )
            ],
          ),
        );
      },
      viewModelBuilder: () => SignupViewModel(),
    );
  }

  Widget _signUpForm(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _numberIndicator(),
        SizedBox(
          height: 30,
        ),
        _form(),
        SizedBox(
          height: 35,
        ),
        _dotIndicator(),
      ],
    );
  }

  Widget _numberIndicator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        children: [
          Container(
            child: Text(
              '1',
              style: GoogleFonts.mulish(
                color: randomColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: randomColor,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: 0.2,
              child: Container(
                color: randomColor,
                height: 1.3,
              ),
            ),
          ),
          Container(
            child: Text(
              '2',
              style: GoogleFonts.mulish(
                color: randomColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: randomColor,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: 0.2,
              child: Container(
                color: randomColor,
                height: 1.3,
              ),
            ),
          ),
          Container(
            child: Text(
              '3',
              style: GoogleFonts.mulish(
                color: randomColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: randomColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _form() {
    return Column(
      children: [
        DefaultTextfield(
          title: 'First name',
        ),
        SizedBox(
          height: 10,
        ),
        DefaultTextfield(
          title: 'Last name',
        ),
      ],
    );
  }

  Widget _dotIndicator() {
    return SizedBox(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => _buildDot(index: index),
      ),
    ));
  }

  Widget _buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 5,
      width: 17,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xFF2C2929) : Color(0xFFEDEFF1),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
