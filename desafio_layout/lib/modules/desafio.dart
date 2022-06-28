import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:desafio_layout/components/cards/notificacoes.dart';
import 'package:desafio_layout/components/expandable_fab/expandable_fab.dart';
import 'package:desafio_layout/components/cards/card_ganhos.dart';
import 'package:desafio_layout/themes/texts_style.dart';
import 'package:flutter/material.dart';
import 'package:desafio_layout/themes/colors.dart';

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
                            Text(
                              "Olá",
                              style: TextsStyle.textView,
                            ),
                            ),
                            Text(
                              "Ziraldo!",
                              style: TextsStyle.texts,
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
                        style: TextsStyle.textView,
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
                  DataCard(visibility: buttonClick,),
                  SizedBox(height: 25,),
                  MoneyCard(visibility: buttonClick,),
                  SizedBox(height: 185),
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
          BottomNavyBarItem(icon: 
            Icon(Icons.home, size: 30,), 
            title: Text("Home", style: TextsStyle.textsSimple,), 
            activeColor: ComponentsColors.primaryColorWhite, 
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(icon: Icon(Icons.shop_2, size: 30), 
            title: Text("Loja", style: TextsStyle.textsSimple,), 
            activeColor: ComponentsColors.primaryColorWhite, 
            textAlign: TextAlign.center
          ),
          BottomNavyBarItem(icon: Icon(Icons.people_alt, size: 30), 
            title: Text("Pessoas", style: TextsStyle.textsSimple,), 
            activeColor: ComponentsColors.primaryColorWhite, 
            textAlign: TextAlign.center
          ),
          BottomNavyBarItem(icon: Icon(Icons.escalator, size: 30), 
            title: Text("Dados", style: TextsStyle.textsSimple,), 
            activeColor: ComponentsColors.primaryColorWhite, 
            textAlign: TextAlign.center
          ),
        ],
      ),
    );
  }
}