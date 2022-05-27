import 'package:flutter/material.dart';
import 'package:desafio_layout/models/themes/colors.dart';
class TextsStyles {
  // Texts Styles for the theme white
  static const TextStyleNameWhite = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
    fontFamily: 'MarkerFelt',
    color: ComponentsColor.SecundaryColorWhite,
  );

  static const SimpleTextWhite = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'MarkerFelt',
    color: ComponentsColor.ColorBySimpleText,
    
  );


  // Texts Styles for the theme black
  static const TextStyleNameBlack = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
    fontFamily: 'MarkerFelt',
    color: ComponentsColor.SecundaryColorBlack,
  );

  static const SimpleTextBlack = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'MarkerFelt',
    color: ComponentsColor.ColorBySimpleTextBlack,
    
  );
}