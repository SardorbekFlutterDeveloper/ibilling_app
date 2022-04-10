
import 'package:flutter/material.dart';
import 'package:ibilling/bottom.dart';
import 'package:ibilling/screens/contracts.dart.dart';
import 'package:ibilling/screens/cubit_hisview.dart';
import 'package:ibilling/screens/cubit_newview.dart';
import 'package:ibilling/screens/cubit_profstate.dart';
import 'package:ibilling/screens/cubit_savview.dart';

class MyRouter {
  Route? ongenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) =>  ContractsPage(),
        );

        case "/history":
        return MaterialPageRoute(
          builder: (context) => const HistoryPage(),
        );

        case "/new":
        return MaterialPageRoute(
          builder: (context) => const NewPage(),
        );

        case "/saved":
        return MaterialPageRoute(
          builder: (context) => const SavedPage(),
        );

        case "/Profile":
        return MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        );
         case "/Bottom":
        return MaterialPageRoute(
          builder: (context) =>  BottomPage(),
        );


    
    }
  }
}
