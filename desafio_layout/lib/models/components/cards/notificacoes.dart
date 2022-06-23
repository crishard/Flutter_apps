import 'package:desafio_layout/models/components/cards/informa%C3%A7%C3%B5es_notificacoes.dart';
import 'package:flutter/material.dart';


class NotificacoesCard extends StatelessWidget{
  const NotificacoesCard({ Key? key, required this.colorCard, required this.visibilidade}) : super(key: key);

  final Color colorCard;
  final bool visibilidade;

  @override
  Widget build( BuildContext context){
    int _novosPedidos = 12;
    int _novosClientes = 20;
    int _novasCidades = 20;

    return Padding(padding:  const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
              InformacoesNotificacoes(esconde: visibilidade, valor: '12', iconNot: Icons.shop_2, text1: 'Novos', text2: 'Pedidos'),
              InformacoesNotificacoes(esconde: visibilidade, valor: '20', iconNot: Icons.people_alt, text1: 'Novos', text2: 'Clientes'),
              InformacoesNotificacoes(esconde: visibilidade, valor: '20', iconNot: Icons.location_city, text1: 'Novas', text2: 'Cidades')
            ],
    ),
    );
  }
}