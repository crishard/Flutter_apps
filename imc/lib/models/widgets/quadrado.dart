import 'package:flutter/material.dart';

class Quadrado extends StatelessWidget {
  const Quadrado({Key? key, required this.conteudo}) : super(key: key);
  final cardColor = const Color(0x4C5065);
  final Widget conteudo;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      child: conteudo,
    );  
  
}
}