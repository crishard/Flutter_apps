import 'package:flutter/material.dart';
import 'package:desafio_layout/models/components/cards/notificacoes.dart';
import 'package:desafio_layout/models/components/cards/ganhos.dart';
import 'package:desafio_layout/models/themes/colors.dart';

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
  void buttonEyes(){
    setState(() {

      escolha = !escolha;
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: escolha ? ComponetsColor.PrimeryColorWhite : ComponetsColor.PrimeryColorBlack,

      body: SafeArea(
           child: Padding(
             padding: const EdgeInsets.only(top: 35, left: 35, right: 35),
            child: Column(
             children: [
               Padding(padding: const EdgeInsets.only(top: 20, bottom: 55),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                     radius: 40,
                     backgroundImage: AssetImage('assets/images/perfil.jpeg'),
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: const [
                       Text('Olá', style: TextStyle(fontSize: 20, color: Colors.white),),
                       Text('João!', style: TextStyle(fontSize: 50, color: Colors.white),),
                     ],
                   )
                 ],
               ),
               ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Parabéns! Esse mês você fez",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.remove_red_eye_rounded, 
                        color: Colors.white, 
                        size: 30,
                      ),
                    ],
                  ),
                  NotificacoesCard(),
                  GanhosCard(),
             ],
            ),   
          ),
         ),
        //  MyStatefulWidget(),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //   Icon(Icons.menu, color: Colors.purple, size: 30,),
      // ],
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