import 'package:desafio_layout/widgets/cards/base_card.dart';
import 'package:desafio_layout/models/text/text_padrao.dart';
import 'package:flutter/material.dart';


class GanhosCard extends StatelessWidget {

  const GanhosCard({ Key? key, required this.visibility}) : super(key: key);
  final bool visibility;
  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    String _money = '34.000,00';

    return BaseCard(
      conteudo: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 40, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.shop_2,
              size: 65,
              color: esquemaDeCores.primary,
              ),       
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? 
                Container(
                  margin: const EdgeInsets.only(right: 62),
                  child: Text("R\$ _,__", style: TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 40,
                          color: esquemaDeCores.secondary,
                        )) 

                ) : Text("R\$ ${_money}", style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 40,
                      color: esquemaDeCores.secondary,
                    )),
                    Container(
                      margin: const EdgeInsets.only(top: 3),
                      child:  TextPadrao(name: "em novos pedidos")
               )
              ],
            )
          ],
        ),
      ),
    );
  }
}
