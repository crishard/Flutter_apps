import 'package:desafio_layout/components/cards/base_card.dart';
import 'package:flutter/material.dart';

import '../../style/themes/tema.dart';

class GanhosCard extends StatelessWidget {
  final bool visibility;

  const GanhosCard({ Key? key, required this.visibility, required this.iconCard,required this.temaCard, required this.textColor}) : super(key: key);
  final Color temaCard;
  final Color textColor;
  final Icon iconCard;
  @override
  Widget build(BuildContext context) {
    double _money = 34000;

    return BaseCard(
      cardTema: temaCard,
      conteudo: Padding(
        padding: const EdgeInsets.only(top: 38, bottom: 38, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconCard,
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? 
                Container(
                  margin: const EdgeInsets.only(right: 55),
                  child: Text("R\$ _.__", style: TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 30,
                          color: textColor,
                        )) 

                ) : Text("R\$ ${_money}0", style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 30,
                      color: textColor,
                    )),
                    Container(
                      margin: const EdgeInsets.only(top: 3),
                      child:  Text("em novos pedidos", style: TextStyle(
                          fontFamily: 'MarkerFelt',
                          fontSize: 20,
                          color: textColor,
                          fontWeight: FontWeight.w700
                ),
                    )
               )
              ],
            )
          ],
        ),
      ),
    );
  }
}
