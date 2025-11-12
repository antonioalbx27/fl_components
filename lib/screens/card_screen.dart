import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/custom_card_tipe1.dart';
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
          ]
      ),
      )
    );
  }
}
