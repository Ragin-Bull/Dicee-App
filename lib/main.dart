import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            'Dicee..',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.redAccent,
        body: MyDice(),
      ),
    );
  }
}

class MyDice extends StatefulWidget {

  @override
  State<MyDice> createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  num leftDiceNumber=1;
  num rightDiceNumber=1;

  void performShit(){
    setState((){
      Random random = Random();
      leftDiceNumber=1 + random.nextInt(5);
      rightDiceNumber=1 + random.nextInt(5);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextButton(
                  onPressed: (){
                    //Some action when the button is pressed
                    performShit();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextButton(
                    onPressed: (){
                      performShit();
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
