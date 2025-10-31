import 'package:fl_components/screens/screens.dart'; // es recomendable siempre que sea con el package
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Listview2Screen(),
      initialRoute:
          'homescreen', //con esto le pasamos el nombre de la ruta, que lo suyo esque la primera sea la de home
      routes: {
        // vamos a definir las rutas de las screens creadas y esto es una ruta, lo de abajo
        'listview1': (BuildContext context) => Listview1Screen(), 
        'listview2': (BuildContext context) => Listview2Screen(),
        'homescreen': (BuildContext context) => HomeScreen(),
        'cardscreen': (BuildContext context) => CardScreen(),
        'alertscreen': (BuildContext context) => AlertScreen(),
      }, //cierre routes
      onGenerateRoute: (settings){
        return MaterialPageRoute(builder: (context) => AlertScreen());//con esto si llamo a una pagina qie no existe 
        //te lleva a la de alert y si le pones un mensajito que ponga que no existe
      },//con esto evitamos errores a la hora de llamarlos con el pushName
    );
  } // cierre widget
} //cierre class
