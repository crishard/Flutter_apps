import 'package:desafio_layout/models/themes/colors.dart';
import 'package:flutter/material.dart';

class GanhosCard extends StatelessWidget{
  const GanhosCard({ Key? key, required this.colorCard, required this.visibilidade, required this.colorIconCardGanhos}) : super(key: key);

  final Color colorCard;
  final bool visibilidade;
  final Color colorIconCardGanhos;
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
      child: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 40, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.shop_2,
              size: 60,
              color: ComponentsColor.CardColorBlack,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibilidade == true ? 
                Container(
                  margin: const EdgeInsets.only(right: 55),
                  child: Text("R\$ _.__") 

                ) : Container(
                  margin: const EdgeInsets.only(right: 55),
                  child: Text("R\$ ${_ganhos}0") 

                ),
                const Text("em novos pedidos",)
              ],
            )
          ],
        ),
      ),
    ),
    );
  }
}