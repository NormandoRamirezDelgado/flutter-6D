import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  final juegos = const [
    'Megaman', 
    'Metal Gear', 
    'Super Smash', 
    'Final Fantasy',
    'Fifa'
  ];

  const ListView1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [

          ...juegos.map(
            (game) => ListTile(
              leading: Icon(Icons.account_balance_outlined),
              title: Text(game),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            )
          )

          // ListTile(
          //   leading: Icon(Icons.account_balance_outlined),
          //   title: Text('Hola Mundo!!')
          // ),

        ],
      )
    );
  }
}