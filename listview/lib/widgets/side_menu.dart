import 'package:flutter/material.dart';
import 'package:listview/router/app_routes.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;
   
  const SideMenu({
    super.key, 
    required this.scaffoldKey
  });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  //Saber que opción del menú esta seleccionada
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (seleccion) {
        setState(() {
          navDrawerIndex = seleccion;
        });
        //Navgación
        final menuItem = AppRoutes.menuOptions[seleccion];
        Navigator.of(context).pushNamed(menuItem.route);

        //Para hacer una referencia a las propiuedades del StateFulWidget
        widget.scaffoldKey.currentState?.closeDrawer();
      },
        children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 15, 20),
            child: Text('Menu Principal', style: TextStyle(fontSize: 15),),
          ),

          ...AppRoutes.menuOptions
            .sublist(0, 3)
            .map((item) => NavigationDrawerDestination(
              icon: Icon(item.icon),
              label: Text(item.name)
            )
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 15, 20),
            child: Text('Más Opciones', style: TextStyle(fontSize: 15),),
          ),

          ...AppRoutes.menuOptions
            .sublist(3)
            .map((item) => NavigationDrawerDestination(
              icon: Icon(item.icon),
              label: Text(item.name)
            )
          ),

          // NavigationDrawerDestination(
          //   icon: Icon(Icons.home), 
          //   label: Text('Home Screen')
          // ),
          // NavigationDrawerDestination(
          //   icon: Icon(Icons.list_alt_outlined), 
          //   label: Text('ListView')
          // ),
          // NavigationDrawerDestination(
          //   icon: Icon(Icons.line_style_outlined), 
          //   label: Text('Cards')
          // ),
        ]
      );
  }
}