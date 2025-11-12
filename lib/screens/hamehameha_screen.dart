import 'package:flutter/material.dart';

class BlackHamehameha extends StatelessWidget {
   
  const BlackHamehameha({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Black Hamehameha'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
         child: Card(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: ListView(
         children: [
            Image.asset("lib/photos/goku-black-kamehameha.gif"),
            SizedBox(height: 20,),
            Card(
              color: Colors.white ,
              child: Text("El Kamehameha Oscuro es púrpura oscuro y su núcleo blanco. Sin embargo, su núcleo es de color oscuro cuando Goku Black lo prepara. Bajo esa forma y como la Super Kamehameha Oscuro mantiene esa tonalidad " 
               "oscura mientras que al utilizar el Super Kamehameha Oscuro Rose, adopta los colores propios del aura del Super Saiyan Rose.",
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