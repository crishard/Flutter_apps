import 'package:desafio_layout/components/cards/base_card.dart';
import 'package:desafio_layout/style/text/text_card_notificacoes.dart';
import 'package:desafio_layout/style/themes/tema.dart';
import 'package:flutter/material.dart';

class NotificacoesCard extends StatelessWidget {
  final bool visibility;

  const NotificacoesCard({ Key? key, required this.visibility,required this.colorComponents }) : super(key: key);
  final bool colorComponents;
  @override
  Widget build(BuildContext context) {
    int _requests = 12;
    int _clients = 20;
    int _cities = 20;

    return BaseCard(
      cardTema: colorComponents? ComponentsColors.cardColorWhite : ComponentsColors.cardColorBlack,
      conteudo: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? TextNotificacoes(name: "*", colorText: colorComponents) : TextNotificacoes(name: "${_requests}", colorText: colorComponents),
                IconNotificacoes(iconBool: colorComponents, icon: Icons.shop_2),
                Column(
                  children: [
                    TextNotificacoes(name: "novos", colorText: colorComponents),
                    TextNotificacoes(name: "pedidos", colorText: colorComponents),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? TextNotificacoes(name: "*", colorText: colorComponents) : TextNotificacoes(name: "${_clients}", colorText: colorComponents),
                IconNotificacoes(iconBool: colorComponents, icon: Icons.people_alt),
                Column(
                  children: [
                    TextNotificacoes(name: "novos", colorText: colorComponents),
                    TextNotificacoes(name: "clientes", colorText: colorComponents),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [ TextNotificacoes(name: "${_clients}", colorText: colorComponents),
              IconNotificacoes(iconBool: colorComponents, icon: Icons.location_city),
                Column(
                  children: [
                    TextNotificacoes(name: "novas", colorText: colorComponents),
                    TextNotificacoes(name: "cidades", colorText: colorComponents),
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

class IconNotificacoes extends StatelessWidget{
  const IconNotificacoes({ Key? key, required this.iconBool, required this.icon}) : super(key: key);
  final bool iconBool;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 40,
      color: iconBool? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,
      );
  }
}