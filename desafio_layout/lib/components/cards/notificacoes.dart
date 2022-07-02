import 'package:desafio_layout/components/cards/base_card.dart';
import 'package:desafio_layout/style/themes/tema.dart';
import 'package:flutter/material.dart';

class NotificacoesCard extends StatelessWidget {
  final bool visibility;

  const NotificacoesCard({ Key? key, required this.visibility, required this.iconCard1, required this.iconCard2, required this.iconCard3,required this.temaCard, required this.textColor }) : super(key: key);
  final Color temaCard;
  final Color textColor;
  final Icon iconCard1, iconCard2, iconCard3;
  @override
  Widget build(BuildContext context) {
    int _requests = 12;
    int _clients = 20;
    int _cities = 20;

    return BaseCard(
      cardTema: temaCard,
      conteudo: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? Text("*", style: TextStyle(
                  fontFamily: 'MarkerFelt',
                  fontSize: 16,
                  color: textColor,
                  fontWeight: FontWeight.w700
                ),) : Text("${_requests}", style: TextStyle(
                  fontFamily: 'MarkerFelt',
                  fontSize: 16,
                  color: textColor,
                  fontWeight: FontWeight.w700
                ),),
                iconCard1,
                Column(
                  children: [
                    Text("novos", style: TextStyle(
                      fontFamily: 'MarkerFelt',
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w700
                    )),
                    Text("pedidos", style: TextStyle(
                      fontFamily: 'MarkerFelt',
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w700
                    ))
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? Text("*", style: TextStyle(
                      fontFamily: 'MarkerFelt',
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w700
                    ),) : Text("${_clients}", style: TextStyle(
                      fontFamily: 'MarkerFelt',
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w700
                    )),
                iconCard2,
                Column(
                  children: [
                    Text("novos", style: TextStyle(
                      fontFamily: 'MarkerFelt',
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w700
                    )),
                    Text("clientes", style: TextStyle(
                      fontFamily: 'MarkerFelt',
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w700
                    ))
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                visibility ? Text("*", style: TextStyle(
                      fontFamily: 'MarkerFelt',
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w700
                    ),) : Text("${_cities}", style: TextStyle(
                      fontFamily: 'MarkerFelt',
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w700
                    ),),
                iconCard3,
                Column(
                  children: [
                    Text("novas", style: TextStyle(
                      fontFamily: 'MarkerFelt',
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w700
                    )),
                    Text("cidades", style: TextStyle(
                      fontFamily: 'MarkerFelt',
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.w700
                    ))
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