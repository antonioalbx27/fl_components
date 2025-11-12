import 'package:flutter/material.dart';

class SuperSaiyanRose extends StatelessWidget {
   
  const SuperSaiyanRose({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperSaiyanRose'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
         child: Card(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: ListView(
         children: [
            Image.asset("lib/photos/supersaiyanrose.gif"),
            SizedBox(height: 20,),
            Card(
              color: Colors.white ,
              child: Text("El Supersaiyan Rosado (超スーパーサイヤ人じんロゼ Sūpā Saiya-jin Roze¿?)"
              "es la versión propia de Goku Black y Zamas Pothala del Supersaiyan,"
              "específicamente la variante de una deidad del Supersaiyan Dios Supersaiyan(El Supersaiyan Dios Supersaiyan" 
              "es la evolución que alcanza un Supersaiyan Dios tras acceder al Supersaiyan)).",
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