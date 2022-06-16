import 'package:flutter/material.dart';

class Quadrado extends StatelessWidget {
  Quadrado({Key? key, required this.conteudo}) : super(key: key);
  final cardColor = Color.fromARGB(249, 76, 80, 101);
  final Widget conteudo;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
      child: conteudo,
    );  
  
}
}