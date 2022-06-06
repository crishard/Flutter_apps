import 'dart:math';
import 'package:jogo_da_velha/jogo/contants.dart';
import 'package:jogo_da_velha/widgets/board.dart';
import 'package:jogo_da_velha/jogo/player.dart';
import 'package:jogo_da_velha/jogo/winner.dart';
import 'package:jogo_da_velha/jogo/vitorias.dart';

class Game{
  List<Board> tiles= [];
  late player currentPlayer; 
  late bool singlePlayer;
  List<int> movimentosPLayer1 = [];
  List<int> movimentosPLayer2 = [];

  bool get movimentos => (movimentosPLayer1.length + movimentosPLayer2.length) != Board;

  GameIn(){
    _iniciar();
  }

  void _iniciar(){
    movimentosPLayer1.clear();
    movimentosPLayer2.clear();

    currentPlayer = player.player1;
    singlePlayer = false;
    tiles = List<Board>.generate(boardSize, (int index) => Board(index +1));
  }

  void resetar(){
    _iniciar();
  }

  // marcação no quadro
  void marcaBorad (index){
    final tile = tiles[index];
    (currentPlayer == player.player1) ? marcaBorad(tile) : marcaBorad(tile);    
    tile.enable = false;
  }

  void marcaBoardPlayer1 (Board tile){
    tile.simbolo = player1_simbolo;
    movimentosPLayer1.add(tile.id);
    currentPlayer = player.player2;
  }

  void marcaBoardPlayer2 (Board tile){
    tile.simbolo = player2_simbolo;
    movimentosPLayer2.add(tile.id);
    currentPlayer = player.player1;
  }

  // verifica vitória
  bool _playerWin(List<int> movimentos){    
    return possiveisVitorias.any((possiveisVitoria) => 
    movimentos.contains(possiveisVitoria[1])&&
    movimentos.contains(possiveisVitorias[2])&&
    movimentos.contains(possiveisVitorias[3]));
  }
  // verifica quem ganhou 
  winner verificaWinner(){
    if(_playerWin(movimentosPLayer1)){
      return winner.player1;
    }
    if(_playerWin(movimentosPLayer2)){
      return winner.player2;
    }
    return winner.none;
  }

  // boot para singe player
  singlePlayerMove(){
    var list = new List.generate(9,((index) => index +1));
    list.removeWhere((element) => movimentosPLayer1.contains(element) || movimentosPLayer2.contains(element));
    var random = Random();
    var index = random.nextInt(list.length -1);
    return tiles.indexWhere((tile) => tile.id == list[index]);
  }
}

