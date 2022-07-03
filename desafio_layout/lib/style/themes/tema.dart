import 'package:flutter/material.dart';

class ComponentsColors {
 ComponentsColors({ Key? key, required this.tema});
 bool tema;

//  temaclaro(tema){
//   if(tema == true){
//     final Color primaryColor = Color.fromARGB(255, 33, 5, 96);
//     final Color
//   }
//  }

  // cores para tema branco
  static const primaryColorWhite = Color.fromARGB(255, 33, 5, 96);
  static const secondaryColorWhite = Color.fromARGB(255, 76, 27, 163);
  static const backgroundColorWhite = Color.fromARGB(255, 231, 230, 231);
  static const numbersColorWhite = Color.fromRGBO(80, 66, 110, 1);
  static const cardColorWhite = Color.fromARGB(255, 214, 210, 226);

  // cores para o tema escuro
  static const primaryColorBlack = Colors.white;
  static const secondaryColorBlack = Color.fromARGB(255, 212, 208, 223);
  static const backgroundColorBlack = Color.fromRGBO(38, 38, 38, 10);
  static const numbersColorBlack = Color.fromRGBO(79, 66, 111, 1);
  static const cardColorBlack = Color.fromRGBO(33, 4, 87, 10);
}