import 'package:desafio_layout/style/themes/tema.dart';
import 'package:flutter/material.dart';

class TextNotificacoes extends StatelessWidget{
 const TextNotificacoes({ Key? key, required this.name, required this.colorText}) : super(key: key);
  final String name;
  final bool colorText;

  @override
  Widget build(BuildContext context) {
    return Text(name, style: TextStyle(
        fontFamily: 'MarkerFelt',
        fontSize: 16,
        color: colorText? ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
        fontWeight: FontWeight.w700
      )); 
  }
}