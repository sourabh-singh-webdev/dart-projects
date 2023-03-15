import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice Flipper'),
          backgroundColor: Colors.black,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldiceNumber = 5;
  int rdiceNumber = 1;

  void randomGenerator() {
    rdiceNumber = Random().nextInt(6) + 1;
    ldiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$ldiceNumber.png'),
              onPressed: () => setState(() {
                randomGenerator();
              }),
            ),
          ),
          Expanded(
              child: TextButton(
            child: Image.asset('images/dice$rdiceNumber.png'),
            onPressed: () => setState(() {
              randomGenerator();
            }),
          ))
        ],
      ),
    );
  }
}
