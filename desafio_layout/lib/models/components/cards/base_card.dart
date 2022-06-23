import 'package:desafio_layout/models/themes/colors.dart';
import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget{
  BaseCard({ Key? key, required this.colorCard, required this.conteudo}) : super(key: key);
   
   Color colorCard;
   Widget conteudo;
  @override
  Widget build( BuildContext context){

    return Padding(padding: const EdgeInsets.only(top: 20),
    child: 
    Container(
      height: 130,
      decoration: BoxDecoration(
        color: colorCard,
        borderRadius: BorderRadius.circular(20), 
       boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
      ],
      ),
      child: conteudo,
      ),
    );
  }
}