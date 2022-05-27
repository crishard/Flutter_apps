import 'package:flutter/material.dart';


class NotificacoesCard extends StatelessWidget{
  const NotificacoesCard({ Key? key }) : super(key: key);

  @override
  Widget build( BuildContext context){
    int _novosPedidos = 12;
    int _novosClientes = 20;
    int _novasCidades = 20;

    return Padding(padding: const EdgeInsets.only(top: 20),
    child: 
    Container(
      height: MediaQuery.of(context).size.height / 6,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 131, 99, 218),
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