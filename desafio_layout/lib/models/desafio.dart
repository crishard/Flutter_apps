import 'package:flutter/material.dart';

class DesafioLayout extends StatefulWidget {
  const DesafioLayout ({ Key? key }) : super(key: key);

  @override
  State<DesafioLayout> createState() => _DesafioLayoutState();
}

class _DesafioLayoutState extends State<DesafioLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,

      body: Row(
        children: const [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/perfil.jpeg'),
        )
      ],)
      
    );
  }
}