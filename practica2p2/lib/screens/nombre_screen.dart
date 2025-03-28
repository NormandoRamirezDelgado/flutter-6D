import 'package:flutter/material.dart';

class NombreScreen extends StatelessWidget {
  const NombreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle tamanio = TextStyle(fontSize: 40);
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Nombre Alumno'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Normando', style: tamanio,),
            Text('Alán', style: tamanio),
            Text('Ramírez', style: tamanio),
            Text('Delgado', style: tamanio),
          ],
        ),
      )
    );
  }
  
}