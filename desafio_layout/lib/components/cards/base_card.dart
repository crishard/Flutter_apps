import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/texts_style.dart';

class BaseCard extends StatelessWidget {

 BaseCard({ Key? key, required this.conteudo}) : super(key: key);

  Widget conteudo;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 137,
      decoration: BoxDecoration(
        color: ComponentsColors.cardColorWhite,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(2, 3),
        )]
      ),
      child: conteudo,
    );
  }
}
