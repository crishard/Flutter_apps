import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Center(child: Text('Calculadora IMC')
         ),
         elevation: 1,
         backgroundColor: Colors.blue,

      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.stretch,
          children: [
            Row(),
            Quadrado(),
            Row(),
            ElevatedButton(onPressed: (){}, child: const Text('Calcular'),),
          ]

      ), // This trailing comma makes auto-formatting nicer for build methods.
    )
    );
  }
}
