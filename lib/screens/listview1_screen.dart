import 'package:fl_components/screens/hamehameha_screen.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const ['Black Hamehameha', 'Super Saiyan Rose', 'Guadaña', 'Cuchilla'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Buenas chavales'),
        backgroundColor: Colors.cyan,
      ),
      
      body: ListView(
        children: [
          ...options.map((e) => ListTile(//asi se crea un mapa, con los ...Variable.map y la funcion
            trailing: Icon(Icons.arrow_forward_ios_outlined),//con el leading se pone en la izquierda, trailing a la derecha
            title:  Text(e),
            
            
          ),
          ).toList()
          /*ListTile(
            leading: Icon(Icons.add_home_sharp),
            title:  Text('Goku black el mejor villano'),
          )
          */

        ],
      )
    );
  }
}


