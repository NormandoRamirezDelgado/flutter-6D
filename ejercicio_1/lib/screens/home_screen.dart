import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Clicks Counter', 
              style: TextStyle(
                fontSize: 30
              ),
            ),
            Text('0', style: TextStyle(fontSize: 30),),
          ],
        ),
      )
    );
  }
  
}