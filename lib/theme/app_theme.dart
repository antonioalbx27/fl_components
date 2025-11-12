import 'package:flutter/material.dart';

class AppTheme {//aqui es donde vamos a poner todos nuestros diseños y asi ahorrar codigo en el main
  static const Color primary = Colors.pinkAccent;
 static final ThemeData blacktheme = ThemeData.dark().copyWith(//con esto le ponemos de que color queremos que sea la app

        primaryColor: Colors.deepOrangeAccent,
        appBarTheme: AppBarTheme(//con esto le damos color al appbar
          backgroundColor: primary,//aqui esta por defento este color en mi app pero como va en arbol; en las demas solo 
          //se quedaria el color ultimo que ponga; en este caso azul; lo suyo es usar solo la propiedas global salvo excepciones
          elevation: 20,
          foregroundColor: Colors.white70,//con esto hago que todo lo que ahya en el appbar sea de ese color
        ),
        listTileTheme: ListTileThemeData(//con esto cambio el tema de la lista
          iconColor: primary,
        ),
 );//cierre theme dark

}
