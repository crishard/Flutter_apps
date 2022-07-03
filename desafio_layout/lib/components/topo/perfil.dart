import 'package:desafio_layout/style/themes/tema.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget{
 const Perfil({ Key? key, required this.escolhaTema,}) : super(key: key);
  final bool escolhaTema;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 15, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/perfil.jpeg"),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                Text("Olá",
                  style: TextStyle(
                    fontFamily: 'MarkerFelt',
                    fontSize: 20,
                    color: escolhaTema ? ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
                    fontWeight: FontWeight.w700),),
                Text("Ziraldo!",
                  style: TextStyle(
                    fontFamily: 'MarkerFelt',
                    fontSize: 60,
                    color: escolhaTema ? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,
                    fontWeight: FontWeight.bold),)
              ],
            ),
          ],
        ),
      );
  }
}