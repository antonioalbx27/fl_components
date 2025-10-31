import 'package:fl_components/screens/screens.dart'; // hayq ue fijarse cuando usemos el navegator; para que llave a la 
//clase en a que tenemos todos los imports y asi no hay tanto codigo
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(//suele fallar si esta constante
      appBar: AppBar(
        title: Text('Componentes de fluter'),
        elevation: 100,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.add_ic_call_sharp),
          title: Text('Nombre de la ruta'),
          onTap: (){
              //para navegar de una pantalla a otra; se usa el navigator
              final route = MaterialPageRoute(builder: (context) => Listview1Screen(),);//con esto le asigno la ruta y ese builder me permite crear un widget
              //Navigator.push(context, route); //con esto le digo que me pinga la screen seleciconada, hay mas opciones que el push
              //Navigator.pushReplacement(context, route); //con este no te deja ir para atras, destruyendo la ruta anterior
              Navigator.pushNamed(context, 'cardscreen');//en lugar de establecer la ruta como lo hemos hecho, le pongo el nombre directamente
          },
          ),
       separatorBuilder: (context, index ) => Divider(), 
      itemCount: 5 
        ), 
        //ya que son 4 screens; pero el home tambien se incluye para que se pueda volver
      );
    
  }
}