import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int win = 0;
  int lose = 0;
  String status = "";
  int player = 0;
  int computer = 3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [

              Text("$win", style: TextStyle( fontSize: 25,color: Colors.green),),
              Text(status, style: TextStyle( fontSize: 25),),
              Text("$lose", style: TextStyle( fontSize: 25,color: Colors.red),),

            ],),
            
            Image.asset("assets/images/$computer.png"),
            Divider(indent: 15,endIndent: 15,),

            Row(children: [

              Expanded(child: InkWell(onTap: () {onImagePressed(0); }, child: Image.asset("assets/images/0.png"))),
              Expanded(child: InkWell(onTap: () {onImagePressed(1); }, child: Image.asset("assets/images/1.png"))),
              Expanded(child: InkWell(onTap: () {onImagePressed(2); }, child: Image.asset("assets/images/2.png"))),

            ],)

          ],),
        ),
      ),
    );
  }

  void onImagePressed(int value){
    counter
    player = value;
    computer = 3;
    status = "";

    setState(() {

    });

    Timer(Duration(seconds: 1), () {
      pcTurn();
    });

  }

  void pcTurn(){
    computer = Random().nextInt(3);
    print("player: $player");
    print("Computer: $computer");

    if ((player == 0 && computer == 2) ||
        (player == 1 && computer == 0) ||
        (player == 2 && computer == 1) ){
      status = "Player Wins!!";
      win++;
    }
    else if (player == computer){
      status = "Tie!!";
    }
    else {
      lose++;
      status = "PC Wins!!";
      }


    setState(() { });
  }
}


