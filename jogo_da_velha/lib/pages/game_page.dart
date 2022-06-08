import 'package:flutter/material.dart';
import 'package:jogo_da_velha/jogo/contants.dart';
import 'package:jogo_da_velha/jogo/game/game.dart';

import '../jogo/game/game.dart';

class GamePage extends StatefulWidget{
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage>{
  final _game = Game();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: _appBar(),
      body: _bodyGame(),
    );
  }
}

_appBar(){
  return AppBar(
    title: const Text(title),
    centerTitle: true,
  );
}

_bodyGame(){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _boardGame(),
        _buttonPlayerMode(),
        _buttonReset()
      ],
    ),
  );
}
_boardGame(){
  return Expanded(
    child: GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: boardSize,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: _buildTile,
    ),
  );
}

_buttonPlayerMode(){

}

_buttonReset(){
  return RaisedButton(
    padding: const EdgeInsets.all(20.0),
    child: const Text(BotaoReiniciar),
    onPressed: _onResetar,
  )
}

_onResetar(){

}
Widget _buildTile(context, index){
  return GestureDetector();
}