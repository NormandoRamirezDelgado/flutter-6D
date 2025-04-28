
import 'package:flutter/material.dart';

class AppTheme {
  
  static const Color primary = Color.fromARGB(255, 15, 109, 34);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color Primario
    primaryColor: const Color.fromARGB(255, 95, 230, 100),

    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: Colors.red[500],
    ),

    //Tema de Botón Flotante
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
            backgroundColor: primary
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),

      border: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
    )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color Primario
    primaryColor: const Color.fromARGB(255, 231, 187, 229),

    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: const Color.fromARGB(255, 224, 120, 64),
    ),

    
  );


}