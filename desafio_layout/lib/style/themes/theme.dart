import 'package:flutter/material.dart';

class DesafioTheme {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;


  static const ColorScheme _lightColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 33, 5, 96),
    primaryVariant: Color.fromARGB(255, 33, 5, 96),
    secondary: Color.fromARGB(255, 76, 27, 163),

    //surface usado para os cards
    surface:Color.fromARGB(255, 214, 210, 226),
    background: Color.fromARGB(255, 231, 230, 231),
    tertiary: Color.fromRGBO(80, 66, 110, 1),
    brightness: Brightness.light,


    //não usadas
    error: Colors.red,
    onPrimary: Color(0xFF0A0E21),
    onSecondary: _lightFillColor,
    onSurface: _lightFillColor,
    onBackground: _lightFillColor,
    onError: _lightFillColor,
    
  );

  static const ColorScheme _darkColorScheme = ColorScheme(
    primary: Colors.white,
    secondary: Color.fromARGB(255, 212, 208, 223),
    secondaryVariant: Color.fromARGB(255, 214, 210, 226),

    //surface usado para os cards
    surface: Color.fromRGBO(33, 4, 87, 10),
    background: Color.fromRGBO(38, 38, 38, 10),
    brightness: Brightness.dark,
    tertiary: Color.fromRGBO(79, 66, 111, 1),


    // não usadas
    error: Colors.red,
    onPrimary: Color(0xFF8D8E98),
    onSecondary: _darkFillColor,
    onSurface: Color(0xFF8D8E98),
    onBackground: _darkFillColor,
    onError: _darkFillColor,
  );


  static ThemeData lightTheme =
      themeData(_lightColorScheme);
  static ThemeData darkTheme =
      themeData(_darkColorScheme);

  static themeData(
          ColorScheme colorScheme) =>
      ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: const Color(0xFF0A0E21),
        colorScheme: colorScheme,
        // focusColor: focusColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: colorScheme.background,
          iconTheme: IconThemeData(color: colorScheme.primary),
        ),
      );
}