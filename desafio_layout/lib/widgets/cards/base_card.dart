import 'package:flutter/material.dart';


class BaseCard extends StatelessWidget {

 BaseCard({ Key? key, required this.conteudo}) : super(key: key);

  Widget conteudo;
  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Container(
      height: 135,
      decoration: BoxDecoration(
        color: esquemaDeCores.surface,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(2, 3),
        )]
      ),
      child: conteudo,
    );
  }
}
