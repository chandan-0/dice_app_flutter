import 'dart:math';
import 'package:flutter/material.dart';

void main()
{
  return runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor:  Colors.red.shade300,
            title: Text(
              'Dice Rolling App',
              style: TextStyle(
                  color: Colors.white,
              ),
            ),
          ),
          body: DicePage(),
        ),
      )
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber=1;
  var rightDiceNumber=1;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/face$leftDiceNumber.png'),
              onPressed: (){
                setState(() {
                  leftDiceNumber=_random();
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/face$rightDiceNumber.png'),
              onPressed: (){
                setState(() {
                  rightDiceNumber=_random();
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  int _random() {
    var randomNumberGenerator = new Random();
      int randomNumber=1+randomNumberGenerator.nextInt(7-1);
    debugPrint("R2==========> $randomNumber ");
    return randomNumber;
  }
}