import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/screens.dart'; // es recomendable siempre que sea con el package
import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Listview2Screen(),
      initialRoute: AppRoutes.initialRoutes, //con esto le pasamos el nombre de la ruta, que lo suyo esque la primera sea la de home
      routes: AppRoutes.getAppRoutes(), //cierre routes
      onGenerateRoute: AppRoutes.onGenerateRoute,//con esto evitamos errores a la hora de llamarlos con el pushName
      theme: AppTheme.blacktheme
      );//cierre widget
    
  } // cierre widget
} //cierre class
