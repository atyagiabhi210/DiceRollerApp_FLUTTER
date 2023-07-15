import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});


  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();

  }
}
class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage='assets/images/dice-6.png';

  void rollTheDice() {
    //Set state is a function we use whenever we want to change the UI of our app
    //after an interaction or user input
    var randomNumber=Random().nextInt(6)+1;
    setState(() {

      activeDiceImage='assets/images/dice-$randomNumber.png';
    });

  }
  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(activeDiceImage,height: 150,width: 150,),
          TextButton(
              onPressed: rollTheDice,
              style: TextButton.styleFrom(padding: const EdgeInsets.only(top: 60)),
              child: const Text(
                'LET' + 'S' + 'ROLL',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ))
        ],
      );
  }
}