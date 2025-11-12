import 'package:flutter/material.dart';

class CuchillaRose extends StatelessWidget {
   
  const CuchillaRose({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CuchillaRose'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
         child: Card(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: ListView(
         children: [
            Image.asset("lib/photos/cuchilla.gif"),
            SizedBox(height: 20,),
            Card(
              color: Colors.white ,
              child: Text("Debido a la capacidad innata de Zamas de crear armas y hojas hechas de su propio ki, Goku Black no tuvo problema en desarrollar su propia versión de ella como Supersaiyano Rose," 
              "la cual tiene forma de cimitarra color rosa-violeta, y que puede manipular a su voluntad. Con esta arma se pueden ejecutar movimientos como el Lazo Divino.",
              style: TextStyle(color: Colors.black),
              ),
            )
          ]
         )
    )
      )
    );
  }
}