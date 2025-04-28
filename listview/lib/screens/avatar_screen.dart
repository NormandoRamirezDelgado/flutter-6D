import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 6),
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text('SL'),
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage('https://i.blogs.es/85aa44/stan-lee/840_560.jpg'),
         )
      ),
    );
  }
}