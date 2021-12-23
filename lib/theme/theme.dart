// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color
Color primaryTextColor = Color(0xFF000000);
Color secondaryTextColor = Color(0xFF999999);
Color textInactiveColor = Color(0xFFBEBEBE);

Color primaryColor = Color(0xFF00B412);
Color tabInactiveColor = Color(0xFFABABAB);
Color borderColor = Color(0xFFEEEDED);
Color textFieldColor = Color(0xFFEAEAEA);

// Text Style
TextStyle headerTextStyle = GoogleFonts.sourceSansPro(
  fontWeight: FontWeight.w600,
  fontSize: 16,
  color: primaryTextColor,
);

TextStyle bodyTextStyle = GoogleFonts.sourceSansPro(
  fontWeight: FontWeight.w400,
  color: primaryTextColor,
);

TextStyle categoryTextStyle = GoogleFonts.sourceSansPro(
  fontWeight: FontWeight.w400,
  fontSize: 10,
  color: primaryTextColor,
);

TextStyle promoTextStyle = GoogleFonts.sourceSansPro(
  fontWeight: FontWeight.w400,
  fontSize: 16,
  color: primaryTextColor,
);

TextStyle secondaryTextStyle = GoogleFonts.sourceSansPro(
  fontWeight: FontWeight.w400,
  color: secondaryTextColor,
);

TextStyle addressTextStyle = GoogleFonts.sourceSansPro(
  fontWeight: FontWeight.w600,
  color: primaryTextColor,
);

TextStyle beforeDiscountTextStyle = GoogleFonts.sourceSansPro(
  fontWeight: FontWeight.w600,
  color: textInactiveColor,
  decoration: TextDecoration.lineThrough,
);

TextStyle seeMoreTextStyle = GoogleFonts.sourceSansPro(
  fontWeight: FontWeight.w600,
  color: primaryColor,
);

TextStyle labelTextStyle = GoogleFonts.sourceSansPro(
  fontWeight: FontWeight.w600,
  fontSize: 16,
);
