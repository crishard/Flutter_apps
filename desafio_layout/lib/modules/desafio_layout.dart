import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:desafio_layout/components/cards/notificacoes.dart';
import 'package:desafio_layout/components/expandable_fab/expandable_fab.dart';
import 'package:desafio_layout/components/cards/card_ganhos.dart';
import 'package:flutter/material.dart';
import 'package:desafio_layout/style/themes/tema.dart';

class Desafio extends StatefulWidget {
  const Desafio({ Key? key }) : super(key: key);
  @override
  State<Desafio> createState() => _DesafioState();
}

class _DesafioState extends State<Desafio> with SingleTickerProviderStateMixin {

  Icon _myIcon = Icon(Icons.visibility);
  bool buttonClick = false;
  int _currentIndex = 0;

  bool temaClaro = true;

  void buttonEyes(){
    setState(() {
      temaClaro = !temaClaro;
    });
  }
  Icon iconTema = const Icon(Icons.bedtime);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: temaClaro ? ComponentsColors.backgroundColorWhite : ComponentsColors.backgroundColorBlack,
        actions: [
        IconButton(
          icon: iconTema,
          iconSize: 20,
          color: temaClaro ? ComponentsColors.numbersColorWhite : ComponentsColors.backgroundColorWhite,
          onPressed: (){
            setState(() {
              if(temaClaro){
                iconTema = const Icon(Icons.bedtime_off_outlined);
                temaClaro = false;
              } else{
                iconTema = const Icon(Icons.bedtime);
                temaClaro = true;
              }
            });
          },
        ),
        ],  
        elevation: 0,),
      backgroundColor: temaClaro ? ComponentsColors.backgroundColorWhite : ComponentsColors.backgroundColorBlack,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/images/perfil.jpeg"),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  [
                            Text("Olá",
                              style: TextStyle(
                                fontFamily: 'MarkerFelt',
                                fontSize: 20,
                                color: temaClaro ? ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
                                fontWeight: FontWeight.w700),),
                            Text("Ziraldo!",
                              style: TextStyle(
                                fontFamily: 'MarkerFelt',
                                fontSize: 60,
                                color: temaClaro ? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,
                                fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Parabéns! Esse mês você fez",
                        style: TextStyle(
                          fontFamily: 'MarkerFelt',
                          fontSize: 20,
                          color: temaClaro? ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
                          fontWeight: FontWeight.w700),),
                      IconButton(
                        icon: _myIcon,
                        iconSize: 35,
                        color: temaClaro? ComponentsColors.numbersColorWhite : ComponentsColors.numbersColorBlack,
                        onPressed: () {
                          setState(() => {
                            if (!buttonClick) {
                              _myIcon = const Icon(Icons.visibility_off),
                              buttonClick = true
                            } else {
                              _myIcon = const Icon(Icons.visibility),
                              buttonClick = false
                            }
                          });
                        },
                      )
                    ],
                  ),
                  NotificacoesCard(
                    iconCard1: Icon(
                      Icons.shop_2,
                      size: 40,
                      color: temaClaro? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,),
                    iconCard2: Icon(
                      Icons.people_alt,
                      size: 40,
                      color: temaClaro? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,),
                    iconCard3: Icon(
                      Icons.location_city,
                      size: 40,
                      color: temaClaro? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,),
                    textColor: temaClaro? ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
                    temaCard: temaClaro? ComponentsColors.cardColorWhite : ComponentsColors.cardColorBlack,
                    visibility: buttonClick,),
                  const SizedBox(height: 15,),
                  GanhosCard(
                    iconCard: Icon(
                      Icons.shop_2,
                      size: 55,
                      color: temaClaro? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,),
                    textColor: temaClaro? ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
                    temaCard: temaClaro? ComponentsColors.cardColorWhite: ComponentsColors.cardColorBlack,
                    visibility: buttonClick,),
                ],
              ),
            ),
          ),
        ],
      ),
        floatingActionButton: const ExpandableFab(
              distance: 90,
              children: [
                ActionButton(
                  name: 'representates', 
                  icon: Icon(
                    Icons.person_add_alt_sharp, 
                    color: Colors.white,
                    size: 20,)),
                ActionButton(
                  name: 'pedidos', 
                  icon:  Icon(
                    Icons.add_shopping_cart,  
                    color: Colors.white,
                    size: 20,)),
                ActionButton(
                  name: 'clientes', 
                  icon:  Icon(
                    Icons.person_add_alt_sharp,  
                    color: Colors.white,
                    size: 20,)),
              ],
        ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: temaClaro ? ComponentsColors.backgroundColorWhite : ComponentsColors.backgroundColorBlack,
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 15,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavyBarItem(
            icon:const Icon(Icons.home, 
            size: 30,),
            title: Text("Home", 
             style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color:temaClaro ?  ComponentsColors.secondaryColorWhite :  ComponentsColors.secondaryColorBlack,
              fontWeight: FontWeight.w700),),
            activeColor: temaClaro ?  ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,
            textAlign: TextAlign.center,
        ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.shop_2, 
              size: 30), 
            title:  Text("Loja", 
            style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color: temaClaro ?  ComponentsColors.secondaryColorWhite :  ComponentsColors.secondaryColorBlack,
              fontWeight: FontWeight.w700),), 
            activeColor: temaClaro ?  ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack, 
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.people_alt, 
              size: 30), 
            title:  Text("Pessoas", 
            style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color: temaClaro ?  ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
              fontWeight: FontWeight.w700),), 
            activeColor:temaClaro ?  ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack, 
            textAlign: TextAlign.center
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.show_chart, 
              size: 30), 
            title: Text("Dados", 
            style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color: temaClaro ?  ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
              fontWeight: FontWeight.w700),), 
            activeColor: temaClaro ?  ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack, 
            textAlign: TextAlign.center),
        ],
      ),
    );
  }
}