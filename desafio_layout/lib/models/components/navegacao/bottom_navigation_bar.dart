import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Loja',
      style: optionStyle,
    ),
    Text(
      'Index 2: Pessoas',
      style: optionStyle,
    ),
    Text(
      'Index 3: Informações',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_two),
            label: 'Loja',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Pessoas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.escalator),
            label: 'Informações',
          ),
        ],
        
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}