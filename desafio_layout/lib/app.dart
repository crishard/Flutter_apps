import 'package:flutter/material.dart';
import 'modules/desafio_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Desafio Layout",
      debugShowCheckedModeBanner: false,
      home: Desafio(),
    );
  }
}