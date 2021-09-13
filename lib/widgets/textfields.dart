import 'package:cloudfift_assessment/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTextfield extends StatefulWidget {
  final String title;

  DefaultTextfield({
    this.title,
  });

  @override
  _DefaultTextfieldState createState() => _DefaultTextfieldState();
}

class _DefaultTextfieldState extends State<DefaultTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.lato(
        color: Color(0xFF2C2929),
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
      autocorrect: false,
      autovalidateMode: AutovalidateMode.disabled,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(13),
        fillColor: Colors.white,
        filled: true,
        hintText: widget.title,
        hintStyle: GoogleFonts.lato(
          color: Color(0xFF9E9E9E),
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: Color(0xFFC5CEE0))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: Color(0xFFC5CEE0))),
      ),
    );
  }
}

class SearchTextfield extends StatefulWidget {
  final String title;

  SearchTextfield({
    this.title,
  });

  @override
  _SearchTextfieldState createState() => _SearchTextfieldState();
}

class _SearchTextfieldState extends State<SearchTextfield> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getProportionateScreenHeight(50),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            border: Border.all(color: Color(0xFFE0E0E0)),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 15, right: 7),
                child: SvgPicture.asset(
                  'assets/icon_images/search_icon.svg',
                )),
            Expanded(
              child: TextField(
                  style: GoogleFonts.lato(
                    color: Color(0xFF2C2929),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration.collapsed(
                    hintStyle: GoogleFonts.lato(
                      color: Color(0xFF9E9E9E),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    hintText: 'What are you going to do today?',
                  )),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 7),
                child: SvgPicture.asset(
                  'assets/icon_images/filter_icon.svg',
                )),
          ],
        ),
      ),
    );
  }
}
