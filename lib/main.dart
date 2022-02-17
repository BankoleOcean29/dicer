import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  var appBarText = 'Dicer';

  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red, appBar: AppBar(title: Text(appBarText), backgroundColor: Colors.teal),
      body: RollDie()),
  )
  );
}

class RollDie extends StatefulWidget {
  const RollDie({Key? key}) : super(key: key);

  @override
  _RollDieState createState() => _RollDieState();
}

class _RollDieState extends State<RollDie> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDie(){
    setState(() {
      int max = 6;
      leftDiceNumber = Random(). nextInt(max) + 1;
      rightDiceNumber =  Random(). nextInt(max) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton
            (onPressed: () {
              changeDie();
              },
              child: Image.asset('images/dice_$leftDiceNumber.png'))),

          Expanded(child: TextButton
            (onPressed: () {
              changeDie();
          },
              child: Image.asset('images/dice_$rightDiceNumber.png'))),
        ],
      ),
    );
  }
}

