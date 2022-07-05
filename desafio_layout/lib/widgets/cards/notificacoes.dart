import 'package:desafio_layout/widgets/cards/base_card.dart';
import 'package:desafio_layout/style/text/text_card_notificacoes.dart';
import 'package:flutter/material.dart';

class NotificacoesCard extends StatelessWidget {
  final bool visibility;

  const NotificacoesCard({ Key? key, required this.visibility}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ColorScheme esquemaDeCores = Theme.of(context).colorScheme;
    int _requests = 12;
    int _clientes = 20;
    int _cidades = 20;

    return BaseCard(
      conteudo: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? const TextNotificacoes(name: "*") : TextNotificacoes(name: "${_requests}"),
                const IconNotificacoes(icon: Icons.shop_2),
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
                visibility ? const TextNotificacoes(name: "*") : TextNotificacoes(name: "${_clientes}"),
                const IconNotificacoes(icon: Icons.people_alt),
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
                visibility ? const TextNotificacoes(name: "*") : TextNotificacoes(name: "${_cidades}"),
              const IconNotificacoes(icon: Icons.location_city),
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