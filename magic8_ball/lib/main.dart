import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Ask me Anything')),
          backgroundColor: Colors.blue.shade900,
        ),
        body: const ImageFlip(),
        backgroundColor: Colors.blue.shade100,
      ),
    ),
  );
}

class ImageFlip extends StatefulWidget {
  const ImageFlip({Key? key}) : super(key: key);

  @override
  State<ImageFlip> createState() => _ImageFlipState();
}

class _ImageFlipState extends State<ImageFlip> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$imageNumber.png'),
        onPressed: () => setState(() {
          imageNumber = Random().nextInt(5) + 1;
        }),
      ),
    );
  }
}
