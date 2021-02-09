import 'package:flutter/material.dart';

import './homeView.dart';
import './charaView.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: HomeView(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => new HomeView(),
        '/chara': (BuildContext context) => new CharaView(),
      },
    );
  }
}



