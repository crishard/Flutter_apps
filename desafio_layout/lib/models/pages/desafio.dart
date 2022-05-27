import 'package:flutter/material.dart';
import 'package:desafio_layout/models/components/cards/notificacoes.dart';
import 'package:desafio_layout/models/components/cards/ganhos.dart';
import 'package:desafio_layout/models/themes/colors.dart';
import 'package:desafio_layout/models/themes/texts_style.dart';

class MyApp extends StatelessWidget{

  const MyApp ({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home:  DesafioLayout(),
    );
  }
}

class DesafioLayout extends StatefulWidget {
  const DesafioLayout ({ Key? key }) : super(key: key);

  @override
  State<DesafioLayout> createState() => _DesafioLayoutState();
}

class _DesafioLayoutState extends State<DesafioLayout> {

  bool escolha = true;
  void botaoTema(){
    setState(() {

      escolha = !escolha;
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: escolha ? ComponentsColor.PrimeryColorWhite : ComponentsColor.PrimeryColorBlack,

      body: SafeArea(
           child: Padding(
             padding: const EdgeInsets.only(top: 35, left: 25, right: 25),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
             
             children: [
               Padding(padding: const EdgeInsets.only(top: 20, bottom: 55),
                
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  const CircleAvatar(
                     radius: 50,
                     backgroundImage: AssetImage('assets/images/perfil.jpeg'),
                   ),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Text('Olá', style: escolha ? TextsStyles.SimpleTextWhite : TextsStyles.SimpleTextBlack,),
                       Text('Ziraldo!', style: escolha ? TextsStyles.TextStyleNameWhite : TextsStyles.TextStyleNameBlack),
                     ],
                   )
                 ],
               ),
               ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Parabéns! Esse mês você fez",
                        style: escolha ? TextsStyles.SimpleTextWhite : TextsStyles.SimpleTextBlack,),
                      
                      IconButton(
                        onPressed: botaoTema, 
                        icon: escolha ? Icon(Icons.visibility): Icon(Icons.visibility_off),
                        color: ComponentsColor.IconsColor,
                        iconSize: 30,
                      )
                    ],
                  ),
                  NotificacoesCard(),
                  GanhosCard(),
             ],
            ),   
          ),
         ),
        //
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black38,
        items: const[

          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.purple,),
            label: 'Home',
            backgroundColor: Colors.black38,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_two,),
            label: 'Loja',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Pessoas',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.escalator),
            label: 'Informações',
            backgroundColor: Colors.purple,
          ),
        ],
    ),
    );
  }
}