import 'package:examen_gpl/models/models.dart';
import 'package:examen_gpl/screens/screens_gpl.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.house_rounded,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'signing',
        icon: Icons.house_rounded,
        name: 'Signing Screen',
        screen: const SigningScreen()),
    MenuOption(
        route: 'listview',
        icon: Icons.house_rounded,
        name: 'Listview Screen',
        screen: ListViewScreen()),
    MenuOption(
        route: 'pistas',
        icon: Icons.sports_basketball,
        name: 'Pistas Screen',
        screen: PistasScreen()),
    MenuOption(
        route: 'monitores',
        icon: Icons.sports_basketball,
        name: 'Monitores Screen',
        screen: MonitoresScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
