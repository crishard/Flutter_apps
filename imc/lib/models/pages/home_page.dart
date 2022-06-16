import 'package:flutter/material.dart';
import 'package:imc/models/widgets/quadrado.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final colorPage = const Color.fromARGB(255, 32, 32, 70);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPage,
      appBar: AppBar(
         title: const Center(child: Text('Calculadora IMC')
         ),
         elevation: 1,
         backgroundColor: colorPage,
          ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.stretch,
          children: [
            Row(),
            Quadrado(
              conteudo: Expanded(child: const Text("Altura", style: TextStyle(color: Colors.white),),),
            ),
            Row(),
            ElevatedButton(onPressed: (){}, child: const Text('Calcular'),),
          ]

      ), // This trailing comma makes auto-formatting nicer for build methods.
    )
    );
  }
}
