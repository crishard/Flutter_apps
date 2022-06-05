import 'package:flutter/material.dart';


class Board {
  String simbolo;
  bool enable;
  final int id;

  Board(this.id,{
    this.simbolo = "",
    this.enable = true,
  });
}