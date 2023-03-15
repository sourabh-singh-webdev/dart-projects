import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('I am Poor'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Colors.grey,
        body: const Center(
          child: Image(
            image: NetworkImage('https://picsum.photos/200'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
