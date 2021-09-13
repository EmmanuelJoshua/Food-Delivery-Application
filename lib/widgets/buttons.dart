import 'package:cloudfift_assessment/utils/colors.dart';
import 'package:cloudfift_assessment/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.onPress,
  }) : super(key: key);
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(46),
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        fillColor: primaryColor,
        onPressed: onPress,
        elevation: 0,
        child: Text(
          text,
          style: GoogleFonts.lato(
            fontSize: 18, // getProportionateScreenHeight(20),
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class DefaultButtonOutlined extends StatelessWidget {
  const DefaultButtonOutlined({
    Key key,
    this.text,
    this.onPress,
  }) : super(key: key);
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(46),
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              width: 1.3,
              color: Colors.white,
            )),
        fillColor: Colors.transparent,
        onPressed: onPress,
        elevation: 0,
        child: Text(
          text,
          style: GoogleFonts.lato(
            fontSize: 18, // getProportionateScreenHeight(20),
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class DefaultButtonIcon extends StatelessWidget {
  const DefaultButtonIcon({
    Key key,
    this.text,
    @required this.iconAsset,
    @required this.color,
    @required this.isLight,
    this.onPress,
  }) : super(key: key);
  final String text;
  final Function onPress;
  final String iconAsset;
  final Color color;
  final bool isLight;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: getProportionateScreenHeight(46),
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        fillColor: color,
        onPressed: onPress,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Container(
                child: SvgPicture.asset(
                  iconAsset,
                  color: isLight ? Colors.white : textColor2,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                text,
                style: GoogleFonts.lato(
                  fontSize: 18, //getProportionateScreenHeight(20),
                  fontWeight: FontWeight.w700,
                  color: isLight ? Colors.white : textColor2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultButtonSocial extends StatelessWidget {
  const DefaultButtonSocial({
    Key key,
    this.text,
    @required this.iconAsset,
    this.color,
    this.onPress,
  }) : super(key: key);
  final String text;
  final Function onPress;
  final String iconAsset;
  final Color color;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(41),
      child: RawMaterialButton(
        shape: color != null
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              )
            : RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(
                  width: 1,
                  color: buttonBorderColor,
                )),
        fillColor: color != null ? color : Colors.transparent,
        onPressed: onPress,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(left: 7, right: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: SvgPicture.asset(
                  iconAsset,
                ),
              ),
              SizedBox(
                width: 11,
              ),
              Text(
                text,
                style: GoogleFonts.lato(
                  fontSize: 18, //getProportionateScreenHeight(20),
                  fontWeight: FontWeight.w700,
                  color: color != null ? Colors.white : textColor2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
