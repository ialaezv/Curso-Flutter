// * Importació dels widgets de material
import 'package:flutter/material.dart';

// * Importació del widget creat dins de /screens/home_screen.dart
// import 'package:app01/screens/home_screen_StatelessWidget.dart';
import 'package:app01/screens/counter_screen_StatefullWidget.dart';

// * Punt inici d'execució del programa on utilitzem void al prinicipi del metode ja que no retorna res!!!
void main() {
  runApp( const MyApp());
}

// * Widget MyApp on tots el widgets són classes!!!
// * Tipus de Widget StatelessWidget o StatefulWidget ->
// * StatelessWidget = No manten el estat dels valors.
// * StatefulWidget  = Si manten el estat dels valors.
class MyApp extends StatelessWidget {
  // * EL constructor de la classe MyApp
  const MyApp({
    Key? key
    }) : super(key: key);

  // * Tot StatelessWidget té un metode de build()
  @override
  Widget build(BuildContext context) {
    // * Tenim que retorna un Widget si o si on amb la llibreria de Material utilitzarem
    // * Si el valor mai sera modificat del widget i els seus fills igual assignem al pare com un valor const
    return const MaterialApp(
      // * Deshabilitar la etiqueta de debug en la aplicació amb true o false
      debugShowCheckedModeBanner: false,
      // home: HomeScreen()
      home: CounterScreen()
    );
  }
}
