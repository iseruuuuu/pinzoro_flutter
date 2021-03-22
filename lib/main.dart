import 'package:flutter/material.dart';
import "dart:math";

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('チンチロリーン'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int Dice1 = 1;
  int Dice2 = 1;
  int Dice3 = 1;

  int Dice4 = 1;
  int Dice5 = 1;
  int Dice6 = 1;

 int Deme1 = 1;
  int Deme2 = 1;

  @override
  Widget build(BuildContext context) {
//  leftDiceNumber = 2;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                // flex: 1,
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        comfirm();
                      });
                    },
                    child: Image(image: AssetImage('images/dice$Dice1.png'))),
              ),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                    onPressed: () {
                      setState(() {
                        comfirm();
                      });
                    },
                    child: Image(image: AssetImage("images/dice$Dice2.png")),
                  ))
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                    onPressed: () {
                      setState(() {
                        comfirm();
                      });
                    },
                    child: Image(image: AssetImage("images/dice$Dice2.png")),
                  ))
                ],
              ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text("Player1のでめ　$Deme1",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text("Player2のでめ　$Deme1",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Row(
            children: <Widget>[
              Expanded(
                // flex: 1,
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        comfirm2();
                      });
                    },
                    child: Image(image: AssetImage('images/dice$Dice4.png'))),
              ),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                    onPressed: () {
                      setState(() {
                        comfirm2();
                      });
                    },
                    child: Image(image: AssetImage("images/dice$Dice5.png")),
                  ))
                ],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                    onPressed: () {
                      setState(() {
                        comfirm2();
                      });
                    },
                    child: Image(image: AssetImage("images/dice$Dice6.png")),
                  ))
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }

  void comfirm() {
    Dice1 = Random().nextInt(6) + 1;
    Dice2 = Random().nextInt(6) + 1;
    Dice3 = Random().nextInt(6) + 1;

  //////////////////でめの種類を書き出す。//////////////////////////
if (Dice1 == Dice2 && Dice1 == Dice3 && Dice2 == Dice3 ) {
  Deme1 = 999;
  print("ピンゾロ！！");
}

if (Dice2 == 1) {
  print("s");
}
    //全て揃っていない   => でめなし ＝ ０点

    //Dice1=Dice2,1  Dice1=Dice2,3 Dice1=Dice2,4 Dice1=Dice2,5 Dice1=Dice2,1 Dice1=Dice2,6
    //でめ、1,2,3,4,5,6


    //123 -＞２倍払い

    //456 -> ２倍もらい

    //111,222,333,444,555,666 -> ピンゾロ！　

  }

  void comfirm2() {
    Dice4 = Random().nextInt(6) + 1;
    Dice5 = Random().nextInt(6) + 1;
    Dice6 = Random().nextInt(6) + 1;

  }
}
