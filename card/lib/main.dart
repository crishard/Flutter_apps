import 'package:flutter/material.dart';

void main() =>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCard(),
    );
  }
}

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/images/perfil.jpeg'),
            ),
            Text(
              'Crislân Torres',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 18.0,
                color: Colors.tealAccent,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          Contato(),
          ],
        ),
      ),
    );
  }
}
class Contato extends StatelessWidget{
  const Contato({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), 
      color: Colors.white,
      ),
      child: Row(
        children: const [
          Icon( Icons.smartphone, size: 30, color: Colors.teal),
          Text('9 9999-9999', style: TextStyle(fontSize: 20),)
        ]

      )
      
       
    );
  }
}