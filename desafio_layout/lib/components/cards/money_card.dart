import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/texts_style.dart';

class MoneyCard extends StatelessWidget {
  final bool visibility;

  const MoneyCard({ Key? key, required this.visibility }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _money = 34000;

    return Container(
      height: 135,
      decoration: BoxDecoration(
        color: ComponentsColors.cardColor,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(2, 3),
        )]
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 40, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.shop_2,
              size: 60,
              color: ComponentsColors.primaryColor,
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
