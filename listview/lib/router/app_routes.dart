import 'package:flutter/material.dart';
import 'package:listview/models/model.dart';

import '../screens/screens.dart';

class AppRoutes {
  
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    MenuOption(route: 'listview1', icon: Icons.list_alt, name: 'ListView Tipo 1', widget: ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, name: 'ListView Tipo 2', widget: ListView2Screen()),
    MenuOption(route: 'cards', icon: Icons.credit_card, name: 'Tarjetas - Cards', widget: CardScreen()),
    MenuOption(route: 'alert', icon: Icons.warning_amber_rounded, name: 'Alerta - Alert', widget: AlertScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_rounded, name: 'Avatar Screen', widget: AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_fill_outlined, name: 'Avatar Screen', widget: AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_rounded, name: 'Text Inputs', widget: InputsScreen()),
    MenuOption(route: 'slider', icon: Icons.social_distance_outlined, name: 'Sliders & Checks', widget: SliderScreen()),
    MenuOption(route: 'listviewbuilder', icon: Icons.build_circle_outlined, name: 'ListViewBuilder', widget: ListViewBuilderScreen()),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final opcion in menuOptions) {
      appRoutes.addAll({opcion.route: (BuildContext context) => opcion.widget});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
          builder: (context) => AlertScreen()
    );
  }

}