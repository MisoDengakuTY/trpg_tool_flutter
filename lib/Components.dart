import 'package:flutter/material.dart';
import 'dart:math';


// nDmロール
class DiceRollComp extends StatefulWidget{
  @override
  _DiceRollCompState createState() => _DiceRollCompState();
}

class _DiceRollCompState extends State<DiceRollComp> {
  List<String> _items = ["1", "2", "3","4"];
  String _selectedItem = "1";


  // nDm Roll
  List<String> _nRoll = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
  List<String> _mRoll = ["3","4","6","8","10","12","20","100"];

  String _selectedN = "1";
  String _selectedM = "3";


  ndmRollfunc (String n, String m) {
    int nNum = int.parse(n);
    int mNum = int.parse(m);
    final rand = new Random();
    int result = 0;
    for(int i = 0; i < nNum; i++){
      result += rand.nextInt(mNum + 1); //rand gen 1 to mNum
    }
    return result.toString();
  }


  @override
  Widget build(BuildContext context) {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children : <Widget> [
        Text('nDmロール', textAlign: TextAlign.start,),
        Row(
        children: <Widget>[
          Container(
            width: 80.0,
            child: DropdownButton(
              value: _selectedN,
              items: _nRoll.map<DropdownMenuItem<String>>
                ((String item) {
                return DropdownMenuItem(
                  child: Text(item),
                  value: item,
                );
              }
              ).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedN = value;
                });
              },
              isExpanded: true,
            ),
          ),
          Text(' D  ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
          Container(
            width: 80.0,
            child: DropdownButton(
              value: _selectedM,
              items: _mRoll.map<DropdownMenuItem<String>>
                ((String item) {
                return DropdownMenuItem(
                  child: Text(item),
                  value: item,
                );
              }
              ).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedM = value;
                });
              },
              isExpanded: true,
            ),
          ),
          RaisedButton(
            child: const Text('Roll'),
            onPressed: () async{
              await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("nDmロール"),
                      content: Text("$_selectedN D $_selectedM => [" + ndmRollfunc(_selectedN,_selectedM) + "]"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("OK"),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    );
                  }
              );
            },
            highlightElevation: 16,
            color: Colors.blue[300],
            highlightColor: Colors.blue,
            onHighlightChanged: (value) {},
          ),
        ]
        )
      ])
    );
  }
}


// 抵抗ロール
class ResistRollComp extends StatefulWidget{
  @override
  _ResistRollCompState createState() => _ResistRollCompState();
}

class _ResistRollCompState extends State<ResistRollComp> {
  List<String> _items = ["A", "B", "C"];
  String _selectedItem = "A";



  // Resist Roll number of 1 to 31
  List<String> _nResist = List<String>.generate(30, (int index) => (index + 1).toString());
  List<String> _mResist = List<String>.generate(30, (int index) => (index + 1).toString());

  @override
  Widget build(BuildContext context) {
    return(
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : <Widget> [
              Text('抵抗ロール', textAlign: TextAlign.start,),
              Row(
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      child: DropdownButton(
                        value: _selectedItem,
                        items: _items.map<DropdownMenuItem<String>>
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
                    Text(' D  ',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                    Container(
                      width: 80.0,
                      child: DropdownButton(
                        value: _selectedItem,
                        items: _items.map<DropdownMenuItem<String>>
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
                    RaisedButton(
                      child: const Text('Roll'),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/chara');
                      },
                      highlightElevation: 16,
                      color: Colors.blue[300],
                      highlightColor: Colors.blue,
                      onHighlightChanged: (value) {},
                    ),
                  ]
              )
            ])
    );
  }
}

class InsanityRollComp extends StatefulWidget{
  @override
  _InsanityRollCompState createState() => _InsanityRollCompState();
}

class _InsanityRollCompState extends State<InsanityRollComp> {
  List<String> _items = ["A", "B", "C"];
  String _selectedItem = "A";



  @override
  Widget build(BuildContext context) {
    return (
    Column(children : <Widget>[
      Container(
        width: double.infinity,
        child: RaisedButton(
          child: const Text("一時的狂気ロール"),
          onPressed: () async{
            await showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("一時的狂気ロール"),
                    content: Text("メッセージメッセージメッセージメッセージメッセージメッセージ"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("OK"),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  );
                }
            );
          },
          highlightElevation: 16,
          color: Colors.blue[300],
          highlightColor: Colors.blue,
          onHighlightChanged: (value) {},
          //isExpanded: true,
        ),
      ),
      Container(
          width: double.infinity,
          child: RaisedButton(
            child: const Text("不定の狂気ロール"),
            onPressed: () async{
              await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("不定の狂気ロール"),
                      content: Text("メッセージメッセージメッセージメッセージメッセージメッセージ"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("OK"),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    );
                  }
              );
            },
            highlightElevation: 16,
            color: Colors.blue[300],
            highlightColor: Colors.blue,
            onHighlightChanged: (value) {},
            //isExpanded: true,
          )
      ),


    ]
    )
    );
  }
}
