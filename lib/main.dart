// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dice App',
        home: HomePage(),
        theme: ThemeData(
            primaryColor: Colors.amber,
            textTheme:
                TextTheme(headline6: TextStyle(fontWeight: FontWeight.bold))));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dice1 = 1;
  int dice2 = 1;

  void rollDice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Zar atmak için zara bas !  ',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
              ),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: rollDice,
                      child: Image.asset(
                        'assets/images/dice$dice1.png',
                      ),
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                      child: FlatButton(
                    color: Colors.red,
                    onPressed: rollDice,
                    child: Image.asset('assets/images/dice$dice2.png'),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
