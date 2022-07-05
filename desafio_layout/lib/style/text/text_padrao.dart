import 'package:desafio_layout/style/themes/tema.dart';
import 'package:flutter/material.dart';

class TextPadrao extends StatelessWidget{
 const TextPadrao({ Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Text(name, 
        style: TextStyle(
        fontFamily: 'MarkerFelt',
        fontSize: 20,
        color: esquemaDeCores.secondary,
        fontWeight: FontWeight.w700),);
  }
}