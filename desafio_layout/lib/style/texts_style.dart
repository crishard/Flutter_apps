import 'package:desafio_layout/style/themes/claro.dart';
import 'package:flutter/material.dart';

class TextsStyle {
  static const texts = TextStyle(
    fontFamily: 'MarkerFelt',
    fontSize: 60,
    color: ComponentsColors.primaryColorWhite,
    fontWeight: FontWeight.bold
  );

  static const textsSimple = TextStyle(
    fontFamily: 'MarkerFelt',
    fontSize: 18,
    color: ComponentsColors.secondaryColorWhite,
    fontWeight: FontWeight.w700
  );
  
  static const textView = TextStyle(
    fontFamily: 'MarkerFelt',
    fontSize: 20,
    color: ComponentsColors.secondaryColorWhite,
    fontWeight: FontWeight.w700
  );

  static const moneyText = TextStyle(
    fontFamily: 'MarkerFelt',
    fontSize: 22,
    color: ComponentsColors.secondaryColorWhite,
    fontWeight: FontWeight.w700
  );

  static const numbersSimple = TextStyle(
    fontFamily: 'ConcertOne',
    fontSize: 16,
    color: ComponentsColors.numbersColorWhite,
  );

  static const price = TextStyle(
    fontFamily: 'ConcertOne',
    fontSize: 32,
    color: ComponentsColors.secondaryColorWhite,
  );

}