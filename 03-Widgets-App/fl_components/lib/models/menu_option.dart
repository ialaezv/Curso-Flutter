// * El que permet el show és mostra o carregar el IconData del la llibreria material
import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption({
      required this.route,
      required this.icon,
      required this.name,
      required this.screen
  });
}
