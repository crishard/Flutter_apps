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
      body: const Dices(),
    );
  }
}

class Dices extends StatelessWidget{
  const Dices({Key ? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
        Expanded(
          child: TextButton(
            onPressed: (){},
              child: Image.asset('assets/images/dice1.png'),
          )
        ),
          Expanded(
            child: TextButton(
              onPressed: (){},
              child: Image.asset('assets/images/dice2.png'),
            ),
            
        ),
      ],
    ),
    );
  }
}