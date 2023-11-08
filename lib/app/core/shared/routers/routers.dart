import 'package:flutter/material.dart';
import 'package:information_app/app/modules/informations/presentation/router/information_router.dart';
import 'package:information_app/app/modules/login/presentation/router/login_router.dart';

import '../consts/app_routes_const.dart';

class Routers {
  static String get initialRoute => '/login';

  static Map<String, Widget Function(BuildContext, dynamic)> routes = {
    AppRoutesConst.login: (context, _) => LoginRouter(),
    AppRoutesConst.information: (context, _) => InformationRouter(),
  };

  static Route? generateRoutes(RouteSettings settings) {
    final routerName = settings.name;
    final routerArgs = settings.arguments;

    final navigateTo = routes[routerName];
    if (navigateTo == null) return null;

    return MaterialPageRoute(
      builder: (context) => navigateTo.call(context, routerArgs),
    );
  }
}
