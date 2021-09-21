import 'dart:ui';

import 'package:cloudfift_assessment/utils/colors.dart';
import 'package:cloudfift_assessment/utils/size_config.dart';
import 'package:cloudfift_assessment/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            height: getProportionateScreenHeight(150),
            width: getProportionateScreenWidth(261),
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
                          height: getProportionateScreenHeight(28),
                          width: getProportionateScreenWidth(72),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.25),
                          ),
                          padding: EdgeInsets.only(bottom: 2),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                            child: Center(
                              child: Text(
                                '30-40mins',
                              ).applyStyle(
                                color: Colors.white,
                                fontSize: getProportionateResponsiveSize(13),
                                fontWeight: FontWeight.w400,
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
                        ).applyStyle(
                          color: Colors.white,
                          fontSize: getProportionateResponsiveSize(18),
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(2),
          ),
          Container(
            width: getProportionateScreenWidth(261),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      foodName,
                    ).applyStyle(
                      color: textColor2,
                      fontSize: getProportionateResponsiveSize(15),
                      fontWeight: FontWeight.w700,
                    ),
                    Text(
                      '₦ 2,000',
                    ).applyStyle(
                      color: textColor2,
                      fontSize: getProportionateResponsiveSize(15),
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'kilimanjaro',
                    ).applyStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: getProportionateResponsiveSize(13),
                      fontWeight: FontWeight.w400,
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
                        ).applyStyle(
                          color: Color(0xFF9E9E9E),
                          fontSize: getProportionateResponsiveSize(13),
                          fontWeight: FontWeight.w400,
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
  RestaurantCard({
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
            height: getProportionateScreenHeight(150),
            width: getProportionateScreenWidth(335),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: new DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageAsset,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _dotIndicator(),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          Container(
            width: getProportionateScreenWidth(335),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      restaurantName,
                    ).applyStyle(
                      color: textColor2,
                      fontSize: getProportionateResponsiveSize(16),
                      fontWeight: FontWeight.w700,
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
                        ).applyStyle(
                          color: Color(0xFF9E9E9E),
                          fontSize: getProportionateResponsiveSize(14),
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(4),
                ),
                Row(
                  children: [
                    Text(
                      'Fast food',
                    ).applyStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: getProportionateResponsiveSize(13),
                      fontWeight: FontWeight.w400,
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
                    ).applyStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: getProportionateResponsiveSize(13),
                      fontWeight: FontWeight.w400,
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
        color:
            index == 0 ? Color(0xFFEDEFF1) : Color(0xFFEDEFF1).withOpacity(0.5),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
