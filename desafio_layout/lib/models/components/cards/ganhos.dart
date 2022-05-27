import 'package:flutter/material.dart';

class GanhosCard extends StatelessWidget{
  const GanhosCard({ Key? key }) : super(key: key);

  @override
  Widget build( BuildContext context){

    num _ganhos = 1200;

    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 30,),
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
    );
  }
}