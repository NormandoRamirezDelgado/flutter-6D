import 'package:flutter/material.dart';
import 'package:listview/router/app_routes.dart';
import 'package:listview/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blue[600],
        title: Text('Componentes de Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
          title: Text(menuOptions[index].name, style: TextStyle(color: AppTheme.primary)),
          onTap: () {
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ), 
        separatorBuilder: (context, index) => Divider(), 
        itemCount: menuOptions.length
      )
    );
  }
}