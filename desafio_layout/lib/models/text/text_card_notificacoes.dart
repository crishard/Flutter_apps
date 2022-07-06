import 'package:flutter/material.dart';

class TextNotificacoes extends StatelessWidget{
 const TextNotificacoes({ Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Text(name, style: TextStyle(
        fontFamily: 'MarkerFelt',
        fontSize: 20,
        color: esquemaDeCores.secondary,
        fontWeight: FontWeight.w700
      )); 
  }
}