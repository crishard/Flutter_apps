import 'package:flutter/material.dart';
import 'package:imc/models/widgets/botao_cremento_decremento.dart';


class BotaoIdadePeso extends StatefulWidget {
  BotaoIdadePeso({Key? key, required this.texto, required this.valor}) : super(key: key);

  final String texto;
  final int valor;
  @override
  _BotaoIdadePesoState createState() => _BotaoIdadePesoState();
}
class _BotaoIdadePesoState extends State<BotaoIdadePeso> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${widget.texto}',style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ), ),
          Text('${widget.valor}',style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ), ),

          Row(
            children: [
          BotaoCD(icon: Icons.add),
          BotaoCD(icon: Icons.remove),
            ]
          ),
        ],
      ),
    );
  }
}