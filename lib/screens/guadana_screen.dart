import 'package:flutter/material.dart';

class GuadanaBlack extends StatelessWidget {
   
  const GuadanaBlack({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GuadañaRose'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
         child: Card(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: ListView(
         children: [
            Image.asset("lib/photos/rose-scythe-black-goku.gif"),
            SizedBox(height: 20,),
            Card(
              color: Colors.white ,
              child: Text("El Trabajo de un Dios (Técnica de un Dios) es una técnica de espada de Ki usada por Goku Black."
              " Es una versión muy mejorada de la técnica del Golpe de Aura (El usuario crea una hoja de energía púrpura,"
              " aguda alrededor de su mano derecha, que es lo suficientemente potente como para bifurcar un ser mucho más grande por la mitad.).",
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