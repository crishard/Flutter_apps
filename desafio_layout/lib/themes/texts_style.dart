import 'package:desafio_layout/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextsStyle {
  static final texts = GoogleFonts.patrickHand(
    fontSize: 60,
    color: ComponentsColors.primaryColor,
    fontWeight: FontWeight.bold
  );

  static final textsSimple = GoogleFonts.patrickHand(
    fontSize: 18,
    color: ComponentsColors.secondaryColor,
    fontWeight: FontWeight.w700
  );
  
  static final textView = GoogleFonts.patrickHand(
    fontSize: 20,
    color: ComponentsColors.secondaryColor,
    fontWeight: FontWeight.w700
  );

  static final numbersSimple = GoogleFonts.concertOne(
    fontSize: 16,
    color: ComponentsColors.numbersColor
  );

  static final price = GoogleFonts.concertOne(
    fontSize: 32,
    color: ComponentsColors.secondaryColor
  );

  static final moneyText = GoogleFonts.patrickHand(
    fontSize: 22,
    color: ComponentsColors.secondaryColor,
    fontWeight: FontWeight.w700
  );
}