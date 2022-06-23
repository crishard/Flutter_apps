import 'package:flutter/material.dart';


class InformacoesNotificacoes extends StatelessWidget{
  InformacoesNotificacoes({ Key? key, required this.esconde, required this.iconNot,required this.valor, required this.text1, required this.text2}) : super(key: key);

  bool esconde;
  String valor;
  String text1, text2;
  IconData iconNot;
  @override
  Widget build( BuildContext context){

    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                  children: [
                    Padding(
                      padding:const EdgeInsets.only(left: 40, bottom: 12),
                      child: Text(
                        esconde ? valor : '*',
                        style: const TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 17,
                        ),
                      ),
                    )
                  ],
                ),
              Row(
                  children:[
                    Icon(
                      iconNot,
                      size: 50,
                    )
                  ],
                ),
              Row(
                  children: [
                    Column(
                      children:[
                        Text(
                          text1,
                          style: const TextStyle(
                            fontFamily: 'MarkerFelt',
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          text2,
                          style: const TextStyle(
                            fontFamily: 'MarkerFelt',
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ],
              ),
            ],
    );
  }
}