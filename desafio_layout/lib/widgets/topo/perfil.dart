import 'package:flutter/material.dart';

class Perfil extends StatelessWidget{
 const Perfil({ Key? key, required this.escolhaTema,}) : super(key: key);
  final bool escolhaTema;

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
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
                    color: esquemaDeCores.secondary,
                    fontWeight: FontWeight.w700),),
                Text("Ziraldo!",
                  style: TextStyle(
                    fontFamily: 'MarkerFelt',
                    fontSize: 60,
                    color: esquemaDeCores.primary,
                    fontWeight: FontWeight.bold),)
              ],
            ),
          ],
        ),
      );
  }
}