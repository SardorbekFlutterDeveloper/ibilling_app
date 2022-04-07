import 'package:flutter/material.dart';
import 'package:ibilling/router/my_router.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
 MyRouter _forRoute = MyRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

     theme: ThemeData.dark(),
      initialRoute: "/Bottom",
      onGenerateRoute: _forRoute.ongenerateRoute,
    );
  }
}
