import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 1'),
        ),
        body: ListView(
          children: [
            // * Iteració de un array per extreure el seu contingut en un ListTitle         
            ...options.map(
              (game) => ListTile(
                title: Text(game),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              )
            ).toList(),

            

          ],

        ));
  }
}
