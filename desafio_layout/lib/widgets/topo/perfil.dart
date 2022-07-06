import 'package:flutter/material.dart';

class Perfil extends StatelessWidget{
 const Perfil({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Padding(
        padding: const EdgeInsets.only(bottom: 20, top: 20, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage("assets/images/perfil.jpeg"),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                Text("Olá",
                  style: TextStyle(
                    fontFamily: 'MarkerFelt',
                    fontSize: 30,
                    color: esquemaDeCores.secondary,
                    fontWeight: FontWeight.w700),),
                Text("Crislân!",
                  style: TextStyle(
                    fontFamily: 'MarkerFelt',
                    fontSize: 80,
                    color: esquemaDeCores.primary,
                    fontWeight: FontWeight.bold),)
              ],
            ),
          ],
        ),
      );
  }
}