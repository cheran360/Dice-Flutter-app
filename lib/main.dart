import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Center(child: Text('Dice')),
            backgroundColor: Colors.red,
          ),
          body: DicePage()),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn = 1;
  int rdn = 1;
  void changedice() {
    setState(() {
      ldn = Random().nextInt(6) + 1;
      rdn = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changedice();
                },
                child: Image(
                  image: AssetImage('images/dice$ldn.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changedice();
                },
                child: Image.asset('images/dice$rdn.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          child: Text(
            'hello prends',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
