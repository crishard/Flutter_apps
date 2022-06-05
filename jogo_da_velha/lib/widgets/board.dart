import 'package:flutter/material.dart';


class Board {
  String simbolo;
  bool enable;
  final int id;
  Color color;

  Board(this.id,{
    this.simbolo = "",
    this.enable = true,
    this.color = Colors.white,
  });
}