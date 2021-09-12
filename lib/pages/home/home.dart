import 'package:cloudfift_assessment/pages/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeIcon = SvgPicture.asset(
    'assets/icon_images/home_icon.svg',
    height: 20,
  );
  final ordersIcon = SvgPicture.asset(
    'assets/icon_images/document_icon.svg',
    height: 20,
  );
  final pickupIcon = SvgPicture.asset(
    'assets/icon_images/pickup_icon.svg',
    height: 20,
  );
  final moreIcon = SvgPicture.asset(
    'assets/icon_images/more_icon.svg',
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 64,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFFA8A8A8),
          selectedLabelStyle: GoogleFonts.lato(fontSize: 12),
          unselectedLabelStyle: GoogleFonts.lato(fontSize: 12),
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: homeIcon,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: ordersIcon,
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: pickupIcon,
              ),
              label: 'Pickup',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: moreIcon,
              ),
              label: 'More',
            ),
          ],
        ),
      ),
      body: HomePage(),
    );
  }
}
