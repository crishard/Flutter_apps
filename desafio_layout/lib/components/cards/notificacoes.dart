import 'package:desafio_layout/themes/colors.dart';
import 'package:desafio_layout/themes/texts_style.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  final bool visibility;

  const DataCard({ Key? key, required this.visibility }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _requests = 12;
    int _clients = 20;
    int _cities = 20;

    return Container(
      // height: 137,
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
                  color: ComponentsColors.primaryColor,
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
                  color: ComponentsColors.primaryColor,
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
                  color: ComponentsColors.primaryColor,
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