import 'package:flutter/cupertino.dart';
import 'dart:math';


class DiceRoll extends StatefulWidget {
  @override
  _DiceRollState createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int dice_no = 1;

  void roll() {
    setState(() {
      dice_no = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (
      Row(
        children : <Widget>[
          GestureDetector(
            onTap: () {
              roll();
            },
            child: Text(dice_no.toString()),
          ),
        ]
      )
    );
  }
}