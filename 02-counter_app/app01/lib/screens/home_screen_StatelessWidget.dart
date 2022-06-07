// * Importacions de la llibreria de Widgets
import 'package:flutter/material.dart';

// * La tradució de StatelessWidget és Widget sin estado
class HomeScreen extends StatelessWidget {
  // * El key es per identificar un Widget dins del contex de la aplicació i poder fer referencia a ell
  const HomeScreen({Key? key}) : super(key: key);

  // * El build context serveix per poder ordenar i saber quins widgets existeixent a més de interactuar amb els widgets fills i pares
  @override
  Widget build(BuildContext context) {
    // * Crem una variable per el tamany de la lletra just abaix del context
    const fonstSize30 = TextStyle(fontSize: 28);
    // * Creació de la variable que contara els clicks
    int counter = 0;
    // * El Scaffold treballa en el body ademes de tindre child o children pero bosy es un widget
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // * <Widget> especifica que tot el que tindra dins els [] es un Widget
          children: <Widget>[
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
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print('+1: $counter');
        },
      ),
    );
  }
}
