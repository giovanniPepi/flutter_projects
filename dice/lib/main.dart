import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  final Random random = Random();
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _updateDiceValues();
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red, elevation: 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                )),
          ),
          Expanded(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _updateDiceValues();
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red, elevation: 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                )),
          )
        ],
      ),
    );
  }

  void _updateDiceValues() {
    rightDiceNumber = random.nextInt(6) + 1;
    leftDiceNumber = random.nextInt(6) + 1;
  }
}
