import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 2;

  var rightDiceNumber = 3;

  void changeDiceState() {
    setState(() {
      leftDiceNumber = Random().nextInt(5) + 1;
      rightDiceNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceState();
              },
              child: Image(
                image: AssetImage("images/dice$leftDiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceState();
              },
              child: Image(
                image: AssetImage("images/dice$rightDiceNumber.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
