import 'package:desafio_layout/components/cards/base_card.dart';
import 'package:desafio_layout/style/text/text_card_notificacoes.dart';
import 'package:flutter/material.dart';

class NotificacoesCard extends StatelessWidget {
  final bool visibility;

  const NotificacoesCard({ Key? key, required this.visibility,required this.colorComponents }) : super(key: key);
  final bool colorComponents;
  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    int _requests = 12;
    int _clients = 20;
    int _cities = 20;

    return BaseCard(
      conteudo: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? TextNotificacoes(name: "*") : TextNotificacoes(name: "${_requests}"),
                IconNotificacoes(icon: Icons.shop_2),
                Column(
                  children: const [
                    TextNotificacoes(name: "novos"),
                    TextNotificacoes(name: "pedidos"),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? TextNotificacoes(name: "*") : TextNotificacoes(name: "${_clients}"),
                IconNotificacoes(icon: Icons.people_alt),
                Column(
                  children: const [
                    TextNotificacoes(name: "novos"),
                    TextNotificacoes(name: "clientes"),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [ 
                visibility ? TextNotificacoes(name: "*") : TextNotificacoes(name: "${_cities}"),
              IconNotificacoes(icon: Icons.location_city),
                Column(
                  children: const [
                    TextNotificacoes(name: "novas"),
                    TextNotificacoes(name: "cidades"),
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
  const IconNotificacoes({ Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    return Icon(
      icon,
      size: 40,
      color: esquemaDeCores.primary,
      );
  }
}