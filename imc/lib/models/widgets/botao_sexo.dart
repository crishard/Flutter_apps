import 'package:flutter/material.dart';
class BotaoSexo extends StatelessWidget {
  const BotaoSexo({Key? key, required this.sexo, required this.iconSexo}) : super(key: key);
  final String sexo;
  final IconData iconSexo;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${sexo}',style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ), ),
          Icon(iconSexo, color: Colors.white, size: 60,),
        ],
      ),
    );
  }
}