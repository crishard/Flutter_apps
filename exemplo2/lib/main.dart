import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Hello World!',
              style: Theme.of(context).textTheme.headline4,
            ),
          Container(
            width: 300,
            height: 200,
            color: Colors.amber,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(
              child: const Text('Texto'),
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              child: const Text('Texto'),
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Container(
              child: const Text('Texto'),
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(
              child: const Text('Texto'),
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              child: const Text('Texto'),
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
            Container(
              child: const Text('Texto'),
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
          ],)
          ]
        ),
      ),
    );
  }
}
