import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Black Hamehameha',
    'Super Saiyan Rose',
    'Guadaña',
    'Cuchilla',
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buenas chavales 2'),
        backgroundColor: Colors.cyan,
      ),

      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          title: Text(options[index]),
          onTap: () {
            //para que le puedas pinchar y cuando le pinche; por consola me muestra un texto de lo que he pinchado
            final poder = options[index];
            print(poder);
          },
        ),
        //con el context index va pasando por el array cada elemento que contenga
        //le digo que me devuleva el listtile para que sea una lista y le meto el trailing un icono
        //y en el title hago un
        //text option que me devuelva un texto con lo que hay dentro del array
        separatorBuilder: (context, index) =>
            const Divider(), //el divider es un elemnto que no va a cambiar y se le suele poner const; pero
        //no hace falta
        itemCount: options
            .length, //con esto le digo cuantos elementos hay en el array si son 10, 20
      ),

      /*children: [
          ...options.map((e) => ListTile(//asi se crea un mapa, con los ...Variable.map y la funcion
            trailing: Icon(Icons.arrow_forward_ios_outlined),//con el leading se pone en la izquierda, trailing a la derecha
            title:  Text(e),
          )).toList(),
          Divider()*/

      /*ListTile(
            leading: Icon(Icons.add_home_sharp),
            title:  Text('Goku black el mejor villano'),
          )
          */
    );
  }
}
