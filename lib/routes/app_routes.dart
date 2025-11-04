import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';
//para que el main este mas limpio; ponemos las rutas en una clase y
// solo tenemos que llamar a esta clase en donde se tenga que usar los routes
class AppRoutes {
  static const initialRoutes = 'homescreen';

  static Map<String, Widget Function(BuildContext)> routes = {
        'listview1': (BuildContext context) => Listview1Screen(), 
        'listview2': (BuildContext context) => Listview2Screen(),
        'homescreen': (BuildContext context) => HomeScreen(),
        'cardscreen': (BuildContext context) => CardScreen(),
        'alertscreen': (BuildContext context) => AlertScreen(),

    };
  static Route<dynamic> onGenerateRoute(RouteSettings settings){

  return MaterialPageRoute(builder: (context) => AlertScreen());//con esto si llamo a una pagina qie no existe 
        //te lleva a la de alert y si le pones un mensajito que ponga que no existe
      }//con esto evitamos errores a la hora de llamarlos con el pushName
}
