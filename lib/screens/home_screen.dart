import 'package:fl_components/routes/app_routes.dart';
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
          leading: Icon(AppRoutes.MenuOptions[index].icon),
          title: Text(AppRoutes.MenuOptions[index].name),
          onTap: (){
              //para navegar de una pantalla a otra; se usa el navigator
              final route = MaterialPageRoute(builder: (context) => Listview1Screen(),);//con esto le asigno la ruta y ese builder me permite crear un widget
              //Navigator.push(context, route); //con esto le digo que me pinga la screen seleciconada, hay mas opciones que el push
              //Navigator.pushReplacement(context, route); //con este no te deja ir para atras, destruyendo la ruta anterior
              Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);//en lugar de establecer la ruta como lo hemos hecho, le pongo el nombre directamente o
              //en esre caso loq ue ahce es directamente llevarme a la ruta en cuanto le toco
          },
          ),
       separatorBuilder: (context, index ) => Divider(), 
      itemCount: AppRoutes.MenuOptions.length,

        ), 
        //ya que son 4 screens; pero el home tambien se incluye para que se pueda volver
      );
    
  }
}