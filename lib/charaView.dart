import 'package:flutter/material.dart';
import './diceRoll.dart';


class CharaView extends StatefulWidget{
  @override
  _CharaViewState createState() => new _CharaViewState();
}

class _CharaViewState extends State<CharaView>{
  double _size = 0.1;


  void set(){
    setState(() {
      _size += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: new AppBar(
        title: new Text('Chara'),
      ),
      body: Row(
          children : <Widget> [
            DiceRoll(),
        ])
      )
    );
  }
}