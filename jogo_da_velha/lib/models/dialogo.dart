import 'package:flutter/material.dart';
import 'package:jogo_da_velha/jogo/contants.dart';

class Dialogo extends StatelessWidget{
  final String mensagem;
  final String titulo;
  final Function onPressed;


  const Dialogo({required this.mensagem, required this.titulo, required this.onPressed});


}