import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

//para que el main este mas limpio; ponemos las rutas en una clase y
// solo tenemos que llamar a esta clase en donde se tenga que usar los routes
class AppRoutes {
  static const initialRoutes = 'homescreen';
  //asi organizamos mejor el como llamar a las ventanas
  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'homescreen',
      icon: Icons.home_repair_service,
      name: 'homescreen',
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      icon: Icons.add_to_queue_rounded,
      name: 'listview1',
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.add_a_photo_rounded,
      name: 'listview2',
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'cardscreen',
      icon: Icons.agriculture_sharp,
      name: 'cardscreen',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'alertscreen',
      icon: Icons.airplane_ticket_outlined,
      name: 'alertscreen',
      screen: const AlertScreen(),
    ),
    
  ];
  static final MenuBlacks = <MenuBlack>[
    MenuBlack(
      route: 'black_hamehameha',
      name: 'Black Hamehameha',
      screen: const BlackHamehameha(),
    ),
    MenuBlack(
      route: 'cuchilla',
      name: 'CuchillaRose',
      screen: const CuchillaRose(),
    ),
    MenuBlack(
      route: 'guadaña',
      name: 'GuadañaRose',
      screen: const GuadanaBlack(),
    ),
    MenuBlack(
      route: 'supersaiyanrose',
      name: 'SuperSaiyanRose',
      screen: const SuperSaiyanRose(),
    ),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //lo que hacemso es guardar las rutas en un mapa para quitarnos mas codigo; recoriendo en el for todo lo que hay en el
    //menu options
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
   
    //lo que hacemso es guardar las rutas en un mapa para quitarnos mas codigo; recoriendo en el for todo lo que hay en el
    //menu options
    for (final option in MenuBlacks) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    
  }
  return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => AlertScreen(),
    ); //con esto si llamo a una pagina qie no existe
    //te lleva a la de alert y si le pones un mensajito que ponga que no existe
  } //con esto evitamos errores a la hora de llamarlos con el pushName

  
 
}

