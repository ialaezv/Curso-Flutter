import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.redAccent;

  // * Light Theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
        
        // * Color Primario
        primaryColor: primary,
        
        // * AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),

        // * Text Button Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom( primary: primary )
        ),

        // Floating Action Buttons
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5
        ),

        // Elevated Buttons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: const StadiumBorder(),
            elevation: 0
          ),
        ),

        // Input Elevation
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle( color: primary ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide( color: primary ),
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide( color: primary ),
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
          ),
          
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10) )
          ),

        )
  );

  // * Dark theme 
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        
        // * Color Primario
        primaryColor: primary,
        
        // * AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),

        scaffoldBackgroundColor: Colors.black

  );
}

