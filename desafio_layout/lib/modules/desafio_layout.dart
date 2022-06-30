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

  late AnimationController animationController;
  late Animation degOneTranslationAnimation;

  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: const Duration(microseconds: 250));
    degOneTranslationAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    super.initState();
    animationController.addListener(() {
      setState(() {
        
      });
    });
  }


  bool temaClaro = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: temaClaro ? ComponentsColors.backgroundColorWhite : ComponentsColors.backgroundColorBlack,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/images/perfil.jpeg"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  [
                            Text(
                              "Olá",
                              style: TextStyle(
                                fontFamily: 'MarkerFelt',
                                fontSize: 20,
                                color: temaClaro ? ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            Text(
                              "Ziraldo!",
                              style: TextStyle(
                                fontFamily: 'MarkerFelt',
                                fontSize: 60,
                                color: temaClaro ? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,
                                fontWeight: FontWeight.bold
                              ),
                            )
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
                          fontWeight: FontWeight.w700
                        ),
                      ),
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
                      size: 45,
                      color: temaClaro? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,
                    ),
                    iconCard2: Icon(
                      Icons.people_alt,
                      size: 45,
                      color: temaClaro? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,
                    ),
                    iconCard3: Icon(
                      Icons.location_city,
                      size: 45,
                      color: temaClaro? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,
                    ),
                    textColor: temaClaro? ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
                    temaCard: temaClaro? ComponentsColors.cardColorWhite : ComponentsColors.cardColorBlack,
                    visibility: buttonClick,),
                  const SizedBox(height: 25,),
                  GanhosCard(
                    iconCard: Icon(
                      Icons.shop_2,
                      size: 60,
                      color: temaClaro? ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,
                    ),
                    textColor: temaClaro? ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
                    temaCard: temaClaro? ComponentsColors.cardColorWhite: ComponentsColors.cardColorBlack,
                    visibility: buttonClick,),
                  const SizedBox(height: 185),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Stack(
              children: [
                Transform.translate(
                  offset: Offset.fromDirection(getRadiansFromDegree(270), degOneTranslationAnimation.value * 100),
                  child: CircularButton(
                    color: ComponentsColors.numbersColorBlack,
                    width: 52,
                    height: 52,
                    icon: const Icon(
                      Icons.shop,
                      color: Colors.white,
                    ),
                    onClick: () => {
                      
                    },
                  ),
                ),
                Transform.translate(
                  offset: Offset.fromDirection(getRadiansFromDegree(225), degOneTranslationAnimation.value * 100),
                  child: CircularButton(
                    color: ComponentsColors.numbersColorWhite,
                    width: 52,
                    height: 52,
                    icon: const Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                    onClick: () => {
                      print("Pessoa 2")
                    },
                  ),
                ),
                Transform.translate(
                  offset: Offset.fromDirection(getRadiansFromDegree(180), degOneTranslationAnimation.value * 100),
                  child: CircularButton(
                    color: ComponentsColors.numbersColorWhite,
                    width: 52,
                    height: 52,
                    icon: const Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                    onClick: () => {
                      print("Pessoa")
                    },
                  ),
                ),
                CircularButton(
                  color: ComponentsColors.primaryColorWhite,
                  width: 60,
                  height: 60,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 45,
                  ),
                  onClick: () => {
                    if (animationController.isCompleted) {
                      animationController.reverse()
                    } else {
                      animationController.forward()
                    }
                  },
                ),
              ],
          ))
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
            icon:Icon(Icons.home, 
            size: 30, 
            ),
            title: Text("Home", 
             style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color:temaClaro ?  ComponentsColors.secondaryColorWhite :  ComponentsColors.secondaryColorBlack,
              fontWeight: FontWeight.w700
            ),),

            activeColor: temaClaro ?  ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack,
            textAlign: TextAlign.center,
        ),


          BottomNavyBarItem(
            icon: const Icon(
              Icons.shop_2, 
              size: 30
              ), 
            title:  Text("Loja", 
            style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color: temaClaro ?  ComponentsColors.secondaryColorWhite :  ComponentsColors.secondaryColorBlack,
              fontWeight: FontWeight.w700
            ),
            ), 
            activeColor: temaClaro ?  ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack, 
            textAlign: TextAlign.center,
          ),

          BottomNavyBarItem(
            icon: const Icon(
              Icons.people_alt, 
              size: 30
              ), 
            title:  Text("Pessoas", 
            style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color: temaClaro ?  ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
              fontWeight: FontWeight.w700
            ),
            ), 
            activeColor:temaClaro ?  ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack, 
            textAlign: TextAlign.center
          ),

          BottomNavyBarItem(
            icon: const Icon(
              Icons.show_chart, 
              size: 30
              ), 
            title: Text("Dados", 
            style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color: temaClaro ?  ComponentsColors.secondaryColorWhite : ComponentsColors.secondaryColorBlack,
              fontWeight: FontWeight.w700
            ),
            ), 
            activeColor: temaClaro ?  ComponentsColors.primaryColorWhite : ComponentsColors.primaryColorBlack, 
            textAlign: TextAlign.center
          ),
        ],
      ),
    );
  }
}