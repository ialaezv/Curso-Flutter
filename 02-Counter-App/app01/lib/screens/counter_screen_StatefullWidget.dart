// * Importacions de la llibreria de Widgets
import 'package:flutter/material.dart';

// * La tradució de StatefulWidget és Widget con estado
class CounterScreen extends StatefulWidget {
  // * El key es per identificar un Widget dins del contex de la aplicació i poder fer referencia a ell
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// * State de (CounterScreen) on administra el estat de tota la classe
class _CounterScreenState extends State<CounterScreen> {
  // * Creació de una propietat ja que esta abans del override
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void equalize() {
    counter = 0;
    setState(() {});
  }

  // * El build context serveix per poder ordenar i saber quins widgets existeixent a més de interactuar amb els widgets fills i pares
  @override
  Widget build(BuildContext context) {
    // * Crem una variable per el tamany de la lletra just abaix del context
    const fonstSize30 = TextStyle(fontSize: 28);
    // * El Scaffold treballa en el body ademes de tindre child o children pero bosy es un widget
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Screen'),
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // * children especifica que tot el que tindra dins els [] es un Widget
          children: [
            const Text(
              'Click Number',
              style: fonstSize30,
            ),
            Text(
              '$counter',
              style: fonstSize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        equalizeFn: equalize,
      ),
    );
  }
}

// * Widget independent que gestiona els botons de sumar restar i torna al valor 0
class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function equalizeFn;

  const CustomFloatingActions(
      {Key? key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.equalizeFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          // * Una manera més directa de executar la suma de counter amb funcions
          onPressed: () => increaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          onPressed: () => equalizeFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}
