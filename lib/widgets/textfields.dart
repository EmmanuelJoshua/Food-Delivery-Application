import 'package:flutter/material.dart';
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
