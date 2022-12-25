import 'package:flutter/material.dart';
import 'package:ibilling/bottom.dart';
import 'package:ibilling/core/constants/navigation/navigation_const.dart';
import 'package:ibilling/views/contracts.dart.dart';
import 'package:ibilling/views/cubit_hisview.dart';
import 'package:ibilling/views/cubit_newview.dart';
import 'package:ibilling/views/cubit_profstate.dart';
import 'package:ibilling/views/cubit_savview.dart';
import 'package:ibilling/views/splash_pages/splash_page.dart';

class Routes {
  static final Routes _instance = Routes._init();
  static Routes get instance => _instance;
  Routes._init();

  Route? ongenerateRoute(RouteSettings settings) {
    final Object? args = settings.arguments;

    switch (settings.name) {
      case NavigationConst.Splash_Page:
        return easyNavigate(const SplashPage());
    }
  }

  MaterialPageRoute easyNavigate(Widget page) {
    return MaterialPageRoute(builder: (BuildContext context) => page);
  }
}
