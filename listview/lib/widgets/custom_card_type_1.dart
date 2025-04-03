import 'package:flutter/material.dart';
import 'package:listview/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album_outlined, 
              color: AppTheme.primary
            ),
            title: Text('Soy un Título'),
            subtitle: Text('Commodo duis cillum deserunt tempor. Reprehenderit excepteur est officia est est labore duis qui anim fugiat ad duis aliquip. Commodo ad aliquip Lorem qui et mollit consectetur exercitation velit qui elit consequat tempor adipisicing.'),
          ),
          
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.green),
                  onPressed: () {}, 
                  child: Text('Cancelar')
                ),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.green),
                  onPressed: () {}, 
                  child: Text('Ok')
                ),
              ],
            ),
          ) 
        ],
      ),
    );
  }
}