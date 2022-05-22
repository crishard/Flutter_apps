import 'package:desafio_layout/modules/desafio.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  const MyApp ({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Desafio Layout',
      home:  DesafioLayout(),
    );
  }
}