import 'package:flutter/material.dart';

void main() {
  runApp(Mohan());
}

class Mohan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CameraScreen(),
    );
  }
}

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("mohan"),
    );
  }
}
