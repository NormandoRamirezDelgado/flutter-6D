
import 'package:flutter/material.dart';

class AppTheme {
  
  static const Color primary = Color.fromARGB(255, 136, 111, 245);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color Primario
    primaryColor: const Color.fromARGB(255, 95, 230, 100),

    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: Colors.red[500],
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