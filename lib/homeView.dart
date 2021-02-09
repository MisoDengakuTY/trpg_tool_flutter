import 'package:flutter/material.dart';
import './Components.dart';

class CharaArguments {
  final String name = 'a';
}

class HomeView extends StatefulWidget{
  @override
  _HomeViewState createState() => _HomeViewState();
}


class _HomeViewState extends State<HomeView>{

  List<String> _items = ["A", "B", "C"];
  String _selectedItem = "A";



  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: new AppBar(
          title: new Text('Home'),
        ),
        body:
        Column(
            children : <Widget> [ Row(
          children : <Widget> [RaisedButton(
            child: const Text('New'),
            onPressed: () {Navigator.of(context).pushNamed('/chara');},
            highlightElevation: 16,
            color: Colors.blue[300],
            highlightColor: Colors.blue,
            onHighlightChanged: (value) {},
          ),
        Container(
          width: 300.0,
          child: DropdownButton(
            value: _selectedItem,
            items : _items.map<DropdownMenuItem<String>>
                ((String item) {
                  return DropdownMenuItem(
                  child: Text(item),
                  value: item,
                  );
                }
                ).toList(),
            onChanged: (value) {
              setState(() {
                _selectedItem = value;
              });
            },
            isExpanded: true,
            ),
          ),
          ]
        ),

      Divider(
        thickness: 3,
        color: Colors.blueGrey[200],
      ),
              DiceRollComp(), // nDmロール
              Divider(
                thickness: 3,
                color: Colors.blueGrey[200],
              ),
              ResistRollComp(),
              Divider(
                thickness: 3,
                color: Colors.blueGrey[200],
              ),
              InsanityRollComp()// 抵抗ロール
      ]
      )
    )
    );
  }
}