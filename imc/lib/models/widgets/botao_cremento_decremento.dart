import 'package:flutter/material.dart';

class BotaoCD extends StatelessWidget{
  BotaoCD({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 60,),
        ],
      ),
    );
  }
}