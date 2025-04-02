import 'package:flutter/material.dart';
import 'package:listview/screens/screens.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text('Componentes de Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.verified_user_outlined),
          title: Text('Nombre de Ruta'),
          onTap: () {
            //Navegación a otro Screen
            // final route = MaterialPageRoute(
            //   builder: (context) => ListView1Screen()
            // );

            //Navigator.pushReplacement(context, route);
Navigator.pushNamed(context, 'listview');
            
          },
        ), 
        separatorBuilder: (context, index) => Divider(), 
        itemCount: 10
      )
    );
  }
}