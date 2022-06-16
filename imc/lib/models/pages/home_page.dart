import 'package:flutter/material.dart';
import 'package:imc/models/widgets/quadrado.dart';
import 'package:imc/models/widgets/botao_sexo.dart';
import 'package:imc/models/widgets/botao_idade_peso.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final colorPage = const Color.fromARGB(255, 32, 32, 70);
  late double _altura = 100;
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
            Row(
              children: [
                Expanded(
                  child: Quadrado(
                    conteudo: 
                    BotaoSexo(iconSexo: Icons.male,
                    sexo: 'Masculino',)
                  )
                ),
                Expanded(
                  child: Quadrado(
                    conteudo: 
                    BotaoSexo(iconSexo: Icons.female,
                    sexo: 'Feminino',)
                  )
                )
              ],
                  ),
            Quadrado(
              conteudo: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  const Text('Altura',  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                RichText(
                  text:  TextSpan(
                    text: '${_altura.ceil()}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    children: const [
                       TextSpan(
                        text: 'cm'
                      ),
                    ]
                  )
                  ),
                Slider(value: _altura, 
                  onChanged: (value) {
                    setState(() {
                      _altura = value;
                    });
                  }, 
                  min: 50, 
                  max: 250,
                  
                  activeColor: Colors.white,
                  inactiveColor: const Color.fromARGB(255, 151, 149, 149),
                  thumbColor: Colors.red,
                ),
                ]
                ,)


              
                ),
            ),
            Row(
              children: [
                Expanded(
                  child: Quadrado(
                    conteudo: BotaoIdadePeso(texto: 'Idade', valor: 20,),
                    ),
                ),
                Expanded(
                  child: Quadrado(
                    conteudo: BotaoIdadePeso(texto: 'Peso', valor: 60,),
                    ),
                ),
              ],
            ),
            ElevatedButton(onPressed: (){}, child: const Text('Calcular'),),
          ]

      ), // This trailing comma makes auto-formatting nicer for build methods.
    )
    );
  }
}
