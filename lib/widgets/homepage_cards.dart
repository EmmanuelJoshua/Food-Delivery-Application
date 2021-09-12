import 'dart:ui';

import 'package:cloudfift_assessment/utils/colors.dart';
import 'package:cloudfift_assessment/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key,
    @required this.imageAsset,
    @required this.foodName,
    this.isSpecialOffer = false,
  }) : super(key: key);

  final String imageAsset;
  final String foodName;
  final bool isSpecialOffer;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(right: 17),
      child: Column(
        children: [
          Container(
            height: 150,
            width: getProportionateResponsiveSize(261),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: new DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageAsset,
                ),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 12,
                  right: 12,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      child: Container(
                          height: getProportionateResponsiveSize(28),
                          width: getProportionateResponsiveSize(72),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.25),
                          ),
                          padding: EdgeInsets.only(bottom: 2),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                            child: Center(
                              child: Text(
                                '30-40mins',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: getProportionateResponsiveSize(15),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ))),
                ),
                isSpecialOffer
                    ? Positioned(
                        top: 12,
                        left: 12,
                        child: Text(
                          '10% off',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: getProportionateResponsiveSize(20),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateResponsiveSize(2),
          ),
          Container(
            width: getProportionateResponsiveSize(261),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      foodName,
                      style: GoogleFonts.lato(
                        color: textColor2,
                        fontSize: getProportionateResponsiveSize(17),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '₦ 2,000',
                      style: GoogleFonts.lato(
                        color: textColor2,
                        fontSize: getProportionateResponsiveSize(17),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateResponsiveSize(2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'kilimanjaro',
                      style: GoogleFonts.lato(
                        color: Color(0xFF9E9E9E),
                        fontSize: getProportionateResponsiveSize(15),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icon_images/star_icon.svg',
                          height: getProportionateResponsiveSize(12),
                          width: getProportionateResponsiveSize(12),
                        ),
                        SizedBox(
                          width: getProportionateResponsiveSize(2),
                        ),
                        Text(
                          '5.0',
                          style: GoogleFonts.lato(
                            color: Color(0xFF9E9E9E),
                            fontSize: getProportionateResponsiveSize(15),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key key,
    @required this.imageAsset,
    @required this.restaurantName,
  }) : super(key: key);

  final String imageAsset;
  final String restaurantName;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        bottom: 15,
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            width: getProportionateResponsiveSize(335),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: new DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageAsset,
                ),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateResponsiveSize(2),
          ),
          Container(
            width: getProportionateResponsiveSize(335),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      restaurantName,
                      style: GoogleFonts.lato(
                        color: textColor2,
                        fontSize: getProportionateResponsiveSize(17),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icon_images/star_icon.svg',
                          height: getProportionateResponsiveSize(12),
                          width: getProportionateResponsiveSize(12),
                        ),
                        SizedBox(
                          width: getProportionateResponsiveSize(2),
                        ),
                        Text(
                          '5.0',
                          style: GoogleFonts.lato(
                            color: Color(0xFF9E9E9E),
                            fontSize: getProportionateResponsiveSize(15),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateResponsiveSize(2),
                ),
                Row(
                  children: [
                    Text(
                      'Fast food',
                      style: GoogleFonts.lato(
                        color: Color(0xFF9E9E9E),
                        fontSize: getProportionateResponsiveSize(15),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: getProportionateResponsiveSize(3),
                    ),
                    Container(
                      color: Color(0xFF918F8F),
                      height: 12,
                      width: 1,
                    ),
                    SizedBox(
                      width: getProportionateResponsiveSize(3),
                    ),
                    Text(
                      'Drinks',
                      style: GoogleFonts.lato(
                        color: Color(0xFF9E9E9E),
                        fontSize: getProportionateResponsiveSize(15),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
