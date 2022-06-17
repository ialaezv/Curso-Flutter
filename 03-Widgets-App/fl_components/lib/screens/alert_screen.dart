import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  // * Cuppertino Style Apple
  void displayDialogIOS (BuildContext context) {

    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {

        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            // * Els Widgets hijos del colum determinen el tamany d'aquest
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox( height: 10, ),
              FlutterLogo( size: 100, )
            ],
          ),
          actions: [

            TextButton(
              child: const Text('Cancelar', style: TextStyle(color:Colors.red ),),
              onPressed: () => Navigator.pop(context)
            ),

            TextButton(
              child: const Text('Aceptar', style: TextStyle( color: Colors.green ),),
              onPressed: () => Navigator.pop(context)
            )
          ]
        );
      }
    );
  }

  // * Material Style Andriod
  void displayDialogAndriod(BuildContext context) {

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {

        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10) ),
          content: Column(
            // * Els Widgets hijos del colum determinen el tamany d'aquest
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox( height: 10, ),
              FlutterLogo( size: 100, )
            ],
          ),
          actions: [

            TextButton(
              child: const Text('Cancelar'),
              onPressed: () => Navigator.pop(context)
            ),

             TextButton(
              child: const Text('Ok', style: TextStyle( color: Colors.green ),),
              onPressed: () => Navigator.pop(context)
            )
          ],
        );
      }
      );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          // Manera manual de sobrescruire el style del theme de la App
          // style: ElevatedButton.styleFrom(
            //   primary: Colors.red,
            //   shape: const StadiumBorder(),
            //   elevation: 0
            // ),
            child: const Padding(
            padding: EdgeInsets.all( 20 ),
            child: Text('Mostrar Alerta', style: TextStyle( fontSize: 18 )),
            ),
            onPressed: () => Platform.isAndroid 
              ? displayDialogAndriod(context)
              : displayDialogIOS(context), 
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.close ),
        onPressed: () {
          // * Torna a la pàgina que es trobava anteriorment
          Navigator.pop(context);
        }),
    );
  }
}