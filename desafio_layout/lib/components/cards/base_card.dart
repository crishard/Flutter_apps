import 'package:flutter/material.dart';


class BaseCard extends StatelessWidget {

 BaseCard({ Key? key, required this.conteudo, required this.cardTema}) : super(key: key);

  Widget conteudo;
  final Color cardTema;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 135,
      decoration: BoxDecoration(
        color: cardTema,
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
