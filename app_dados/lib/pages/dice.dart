import 'dart:math';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key ? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget{
  const DicePage({Key ? key}) : super(key: key);
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dice', style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.red,
      ),
      body: Dices(),
    );
  }
}

class Dices extends StatefulWidget{
  const Dices({Key ? key}) : super(key: key);
  @override
  State<Dices> createState() => _DicesState();
}


class _DicesState extends State<Dices>{
  int dicelock1 = 1;
  int dicelock2 = 1;

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
        Expanded(
          child: TextButton(
            onPressed: (){
              setState(() {
                dicelock1 = Random().nextInt(6) + 1;
              });
            },
              child: Image.asset('assets/images/dice$dicelock1.png'),
          )
        ),
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  dicelock2 = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('assets/images/dice$dicelock2.png'),
            ),
            
        ),
      ],
    ),
    );
  }
}