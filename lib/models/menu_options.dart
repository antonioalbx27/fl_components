import 'package:flutter/material.dart';
//Usamos este tipo de clases para quitar codigo en el main; para que no haya tanto codigo en el
class MenuOption{
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption({
    required this.route, 
    required this.icon, 
    required this.name, 
    required this.screen});

  
  
}
class MenuBlack{
  final String route;
  final String name;
  final Widget screen;

  MenuBlack({
    required this.route,  
    required this.name, 
    required this.screen});
}