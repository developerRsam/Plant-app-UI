import 'package:flutter/material.dart';

import './home_screen.dart';
import './item_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vriksham App',
      home: HomeScreen(),
      theme: ThemeData(
        canvasColor: Colors.white,
        primaryColor: Colors.green,
        fontFamily: 'Lato',
      ),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        ItemScreen.routeName: (ctx) => ItemScreen(),
      },
    );
  }
}
