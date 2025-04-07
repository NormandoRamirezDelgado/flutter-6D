import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});

  void despliegaDialogo(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Text('Título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('¡Este es el contenido de la Alerta!'),
              SizedBox(height: 20,),
              FlutterLogo(size: 150,),
              
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text('Cancelar')
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
          onPressed: () => despliegaDialogo(context), 
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text('¡Mostrar Alerta!', style: TextStyle(fontSize: 30),),
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //backgroundColor: Colors.green,
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.close),
      ),
    );
  }
}