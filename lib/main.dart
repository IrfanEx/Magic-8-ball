import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Ball(),
      ),
    );

class Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("ASK ME ANYTHING"),
        backgroundColor: Colors.blue[900],
      ),
      body: BallA(),
    );
  }
}

class BallA extends StatefulWidget {
  @override
  _BallAState createState() => _BallAState();
}

class _BallAState extends State<BallA> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballnumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballnumber.png'),
      ),
    );
  }
}
