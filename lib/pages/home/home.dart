import 'package:cloudfift_assessment/pages/home/homepage.dart';
import 'package:cloudfift_assessment/pages/home/viewmodels/home_viewmodel.dart';
import 'package:cloudfift_assessment/utils/colors.dart';
import 'package:cloudfift_assessment/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder<HomeViewModel>.reactive(
      disposeViewModel: true,
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: Container(
            height: getProportionateScreenHeight(64),
            child: BottomNavigationBar(
              currentIndex: model.currentIndex,
              onTap: (index) {
                model.setCurrentIndex = index;
              },
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset(
                      'assets/icon_images/home_icon.svg',
                      height: 20,
                      color: model.currentIndex == 0
                          ? primaryColor
                          : unselectedNavColor,
                    ),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset(
                      'assets/icon_images/document_icon.svg',
                      height: 20,
                      color: model.currentIndex == 1
                          ? primaryColor
                          : unselectedNavColor,
                    ),
                  ),
                  label: 'Orders',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset(
                      'assets/icon_images/pickup_icon.svg',
                      height: 20,
                      color: model.currentIndex == 2
                          ? primaryColor
                          : unselectedNavColor,
                    ),
                  ),
                  label: 'Pickup',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: SvgPicture.asset(
                      'assets/icon_images/more_icon.svg',
                      height: 20,
                      color: model.currentIndex == 3
                          ? primaryColor
                          : unselectedNavColor,
                    ),
                  ),
                  label: 'More',
                ),
              ],
            ),
          ),
          body: HomePage(),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
