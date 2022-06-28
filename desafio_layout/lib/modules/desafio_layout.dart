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
    animationController = AnimationController(vsync: this,duration: Duration(microseconds: 250));
    degOneTranslationAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    super.initState();
    animationController.addListener(() {
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ComponentsColors.backgroundColorWhite,
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
                          children: [
                            Container(
                              child: 
                            const Text(
                              "Olá",
                              style: TextStyle(
                                fontFamily: 'MarkerFelt',
                                fontSize: 20,
                                color: ComponentsColors.secondaryColorWhite,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            ),
                            const Text(
                              "Ziraldo!",
                              style: TextStyle(
                                fontFamily: 'MarkerFelt',
                                fontSize: 60,
                                color: ComponentsColors.primaryColorWhite,
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
                     const Text(
                        "Parabéns! Esse mês você fez",
                        style: TextStyle(
                          fontFamily: 'MarkerFelt',
                          fontSize: 20,
                          color: ComponentsColors.secondaryColorWhite,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      IconButton(
                        icon: _myIcon,
                        iconSize: 35,
                        color: ComponentsColors.numbersColorWhite,
                        onPressed: () {
                          setState(() => {
                            if (!buttonClick) {
                              _myIcon = Icon(Icons.visibility_off),
                              buttonClick = true
                            } else {
                              _myIcon = Icon(Icons.visibility),
                              buttonClick = false
                            }
                          });
                        },
                      )
                    ],
                  ),
                  NotificacoesCard(
                    iconCard1: const Icon(
                      Icons.shop_2,
                      size: 45,
                      color: ComponentsColors.primaryColorWhite,
                    ),
                    iconCard2: const Icon(
                      Icons.people_alt,
                      size: 45,
                      color: ComponentsColors.primaryColorWhite,
                    ),
                    iconCard3: const Icon(
                      Icons.location_city,
                      size: 45,
                      color: ComponentsColors.primaryColorWhite,
                    ),
                    textColor: ComponentsColors.secondaryColorWhite,
                    temaCard: ComponentsColors.cardColorWhite,
                    visibility: buttonClick,),
                  const SizedBox(height: 25,),
                  GanhosCard(
                    iconCard: const Icon(
                      Icons.shop_2,
                      size: 60,
                      color: ComponentsColors.primaryColorWhite,
                    ),
                    textColor: ComponentsColors.secondaryColorWhite,
                    temaCard: ComponentsColors.cardColorWhite,
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
                    color: ComponentsColors.primaryColorWhite,
                    width: 55,
                    height: 55,
                    icon: Icon(
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
                    color: ComponentsColors.primaryColorWhite,
                    width: 55,
                    height: 55,
                    icon: Icon(
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
                    color: ComponentsColors.primaryColorWhite,
                    width: 55,
                    height: 55,
                    icon: Icon(
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
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
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
        backgroundColor: ComponentsColors.backgroundColorWhite,
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 15,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavyBarItem(
            icon: const Icon(
              Icons.home, 
              size: 30,
              ), 
            title: const Text("Home", 
            style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color: ComponentsColors.secondaryColorWhite,
              fontWeight: FontWeight.w700
            ),
            ), 
            activeColor: ComponentsColors.primaryColorWhite, 
            textAlign: TextAlign.center,
          ),

          BottomNavyBarItem(
            icon: const Icon(
              Icons.shop_2, 
              size: 30
              ), 
            title: const Text("Loja", 
            style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color: ComponentsColors.secondaryColorWhite,
              fontWeight: FontWeight.w700
            ),
            ), 
            activeColor: ComponentsColors.primaryColorWhite, 
            textAlign: TextAlign.center
          ),

          BottomNavyBarItem(
            icon: const Icon(
              Icons.people_alt, 
              size: 30
              ), 
            title: const Text("Pessoas", 
            style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color: ComponentsColors.secondaryColorWhite,
              fontWeight: FontWeight.w700
            ),
            ), 
            activeColor: ComponentsColors.primaryColorWhite, 
            textAlign: TextAlign.center
          ),

          BottomNavyBarItem(
            icon: const Icon(
              Icons.escalator, 
              size: 30
              ), 
            title: const Text("Dados", 
            style: TextStyle(
              fontFamily: 'MarkerFelt',
              fontSize: 18,
              color: ComponentsColors.secondaryColorWhite,
              fontWeight: FontWeight.w700
            ),
            ), 
            activeColor: ComponentsColors.primaryColorWhite, 
            textAlign: TextAlign.center
          ),
        ],
      ),
    );
  }
}