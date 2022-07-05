import 'package:desafio_layout/controllers/mudatema.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pages/desafio_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TemaCubit>(
      create: (_) => TemaCubit(),
      child:  BlocBuilder<TemaCubit, ThemeData>(
        builder: (context, state) {
           return MaterialApp(
            title: "Desafio Layout",
            debugShowCheckedModeBanner: false,
            home: const Desafio(),
            theme: state,
          );
    },
    ));
  }
}