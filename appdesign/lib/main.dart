import 'package:flutter/material.dart';

void main() =>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageApp(),
    );
  }
}

class HomePageApp extends StatefulWidget {
  const HomePageApp({Key? key}) : super(key: key);
  @override
  State<HomePageApp> createState() => _HomePageAppState();
}

class _HomePageAppState extends State<HomePageApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 0,
                backgroundImage: AssetImage('assets/images/perfil.jpeg'),
              ),
              Container(
                child: const Text('Hello World'),
              )
            ],
          ),
          )
      ),
    );
  }
}
