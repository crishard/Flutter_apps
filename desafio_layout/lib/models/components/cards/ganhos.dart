import 'package:flutter/material.dart';

class GanhosCard extends StatelessWidget{
  const GanhosCard({ Key? key, required this.colorCard}) : super(key: key);

  final Color colorCard;
  @override
  Widget build( BuildContext context){

    num _ganhos = 1200;

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