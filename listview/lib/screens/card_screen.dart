import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        title: Text('Tarjetas - Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://www.aaronreedphotography.com/images/xl/The-Wash-Web-2019.jpg', name: 'Un Hermoso Paisaje',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://iso.500px.com/wp-content/uploads/2023/01/By-Donghao-2.jpeg',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://store.bandccamera.com/cdn/shop/articles/landscape-photography-settings-164919.jpg?v=1659674922',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaBXmHssCpkskMSjjN6wc2-5rPPfPpSzpfAg&s', name: 'Buena Fotografía',),
        
        ] 
      ),
    );
  }
}

