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
        title: Text('Dice'),
      ),
      body: Dices(),
    );
  }
}

class Dices extends StatelessWidget{
  const Dices({Key ? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}