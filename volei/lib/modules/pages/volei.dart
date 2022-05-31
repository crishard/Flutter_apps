import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Volei(),
    );
  }
}
class Volei extends StatefulWidget{
  @override
  _VoleiState createState() => _VoleiState();
}
class _VoleiState extends State<Volei>{
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Text("Volei"),
      ),
    );
  }
}