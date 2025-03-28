import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextStyle fontSize30 = TextStyle(fontSize: 30);
    int counter = 0;

    return Scaffold(
      //backgroundColor: const Color.fromARGB(204, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 200, 229),
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Haz presionado el botón', style: fontSize30,),
            Text('$counter', style: fontSize30,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          counter++;
          //print('Presionaste el Botón $counter veces');
        },

      ),
    );
  }
  
}