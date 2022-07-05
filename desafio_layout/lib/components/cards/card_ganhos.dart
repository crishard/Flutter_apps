import 'package:desafio_layout/components/cards/base_card.dart';
import 'package:desafio_layout/style/text/text_padrao.dart';
import 'package:flutter/material.dart';

import '../../style/themes/tema.dart';

class GanhosCard extends StatelessWidget {
  final bool visibility;

  const GanhosCard({ Key? key, required this.visibility, required this.colorComponents}) : super(key: key);
  final bool colorComponents;
  @override
  Widget build(BuildContext context) {
    String _money = '34.000,00';

    return BaseCard(
      cardTema: colorComponents? ComponentsColors.cardColorWhite: ComponentsColors.cardColorBlack,
      conteudo: Padding(
        padding: const EdgeInsets.only(top: 38, bottom: 38, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.shop_2,
              size: 60,
              color: colorComponents? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,
              ),       
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? 
                Container(
                  margin: const EdgeInsets.only(right: 58),
                  child: Text("R\$ _,__", style: TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 30,
                          color: colorComponents? ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
                        )) 

                ) : Text("R\$ ${_money}", style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 30,
                      color: colorComponents? ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
                    )),
                    Container(
                      margin: const EdgeInsets.only(top: 3),
                      child:  TextPadrao(colorText: colorComponents, name: "em novos pedidos")
               )
              ],
            )
          ],
        ),
      ),
    );
  }
}
