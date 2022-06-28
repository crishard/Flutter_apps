import 'package:desafio_layout/components/cards/base_card.dart';
import 'package:flutter/material.dart';

import '../../style/themes/claro.dart';
import '../../style/texts_style.dart';

class MoneyCard extends StatelessWidget {
  final bool visibility;

  const MoneyCard({ Key? key, required this.visibility }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _money = 34000;

    return BaseCard(conteudo: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 40, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.shop_2,
              size: 60,
              color: ComponentsColors.primaryColorWhite,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? 
                Container(
                  margin: const EdgeInsets.only(right: 55),
                  child: Text("R\$ _.__", style: TextsStyle.price,) 

                ) : Text("R\$ ${_money}0", style: TextsStyle.price,),
                Text("em novos pedidos", style: TextsStyle.moneyText)
              ],
            )
          ],
        ),
      ),
    );
  }
}
