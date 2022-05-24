import 'package:flutter/material.dart';


class NotificacoesCard extends StatelessWidget{
  const NotificacoesCard({ Key? key }) : super(key: key);

  @override
  Widget build( BuildContext context){
    int _novosPedidos = 12;
    int _novosClientes = 20;
    int _novasCidades = 20;

    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 15,),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 131, 99, 218),
        borderRadius: BorderRadius.circular(20), 
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 131, 99, 218), 
            blurRadius: 3, 
            spreadRadius: 7, 
            offset: Offset(2, 3))]
      ),
      
    );
  }
}