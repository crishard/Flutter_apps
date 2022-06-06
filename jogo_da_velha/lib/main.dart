import 'package:flutter/material.dart';
import 'package:jogo_da_velha/pages/game_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: GamePage(),
    );
  }
}