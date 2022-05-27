import 'package:flutter/material.dart';


class NotificacoesCard extends StatelessWidget{
  const NotificacoesCard({ Key? key, required this.colorCard}) : super(key: key);

  final Color colorCard;

  @override
  Widget build( BuildContext context){
    int _novosPedidos = 12;
    int _novosClientes = 20;
    int _novasCidades = 20;

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
    ),
    );
  }
}