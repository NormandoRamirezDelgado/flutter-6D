import 'package:flutter/material.dart';
import 'package:practica2p2/screens/nombre_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NombreScreen(),
    );
  }

}