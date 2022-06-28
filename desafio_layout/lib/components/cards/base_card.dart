import 'package:flutter/material.dart';


class BaseCard extends StatelessWidget {

 BaseCard({ Key? key, required this.conteudo, required this.cardTema}) : super(key: key);

  Widget conteudo;
  final Color cardTema;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 137,
      decoration: BoxDecoration(
        color: cardTema,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(2, 3),
        )]
      ),
      child: conteudo,
    );
  }
}
