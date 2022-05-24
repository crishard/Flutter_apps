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
            color: Color.fromARGB(255, 131, 99, 218), 
            blurRadius: 3, 
            spreadRadius: 5, 
            offset: Offset(2, 3))]
      ),
    );
  }
}