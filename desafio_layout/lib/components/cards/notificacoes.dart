import 'package:desafio_layout/components/cards/base_card.dart';
import 'package:desafio_layout/style/themes/claro.dart';
import 'package:desafio_layout/style/texts_style.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  final bool visibility;

  const DataCard({ Key? key, required this.visibility }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _requests = 12;
    int _clients = 20;
    int _cities = 20;

    return BaseCard(conteudo: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? Text("*", style: TextsStyle.textsSimple,) : Text("${_requests}", style: TextsStyle.textsSimple,),
                Icon(
                  Icons.shop_2,
                  size: 45,
                  color: ComponentsColors.primaryColorWhite,
                ),
                Column(
                  children: [
                    Text("Novos", style: TextsStyle.textsSimple),
                    Text("Pedidos", style: TextsStyle.textsSimple)
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? Text("*", style: TextsStyle.textsSimple,) : Text("${_clients}", style: TextsStyle.textsSimple,),
                Icon(
                  Icons.people_alt,
                  size: 45,
                  color: ComponentsColors.primaryColorWhite,
                ),
                Column(
                  children: [
                    Text("Novos", style: TextsStyle.textsSimple),
                    Text("Clientes", style: TextsStyle.textsSimple)
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? Text("*", style: TextsStyle.textsSimple,) : Text("${_cities}", style: TextsStyle.textsSimple,),
                Icon(
                  Icons.location_city,
                  size: 45,
                  color: ComponentsColors.primaryColorWhite,
                ),
                Column(
                  children: [
                    Text("Novas", style: TextsStyle.textsSimple),
                    Text("Cidades", style: TextsStyle.textsSimple)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}