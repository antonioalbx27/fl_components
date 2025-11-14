import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/custom_card_tipe1.dart';
import 'package:fl_components/widgets/custom_card_tipo2.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: Center(
         child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 34, vertical: 45),
         children: [
         CustomCardTipe1(),
         SizedBox(height: 10,),
         CustomCardTipo2(imageURL: 'https://es.dragon-ball-official.com/dragonball/jp/news/2024/04/u240424115-3V2_2.jpg?_=1762499220.jpg', nameCharacter: 'BlackSupervillano'),
         CustomCardTipo2(imageURL: 'https://i.pinimg.com/736x/e8/00/a1/e800a18bc6677f4109afd29d55c63cce.jpg', nameCharacter: 'GhostCod'),
        CustomCardTipo2(imageURL: 'https://i.3djuegos.com/juegos/15462/tomb_raider__2018_/fotos/ficha/tomb_raider__2018_-4662403.jpg', nameCharacter: 'LaraCroft'),
         CustomCardTipo2(imageURL: 'https://img.youtube.com/vi/1IYPaDRAL0I/0.jpg', nameCharacter: 'TronEvolution'),
          ]
      ),
      )
    );
  }
}
