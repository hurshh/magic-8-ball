import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            title: Center(
              child: Text(
                "ASK ME ANYTHING"
              ),
            ),
          ),
          body: magicBall(),
        ),
      ),
    );

class magicBall extends StatefulWidget {

  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  @override
  int ImageNumber =1;
  randomNumbergenerator(min, max){
    var rn = new Random();
    return min+ rn.nextInt(max-min);
  }
  Widget build(BuildContext context) {

    return SafeArea(
      child: Center(
      child: Center(
        child: Expanded(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ImageNumber = randomNumbergenerator(1, 5);
            });
          },
          child: Image(
            image: AssetImage('images/ball$ImageNumber.png'),
          ),
        ),
    ),
      ),
      )
    );
  }
}
