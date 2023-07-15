import 'package:flutter/material.dart';
import 'package:first_project/dice_roller.dart';
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override

  Widget build(BuildContext context) {
    return Container(
      //decoration box is a built in object/parameter in the Container
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.indigo,
        Colors.blue,
        Colors.green,
        Colors.yellow,
        Colors.red
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),

      child: const Center(

//to change the style and color of the text we don't have to wrap it up in any container we just have to
          //we just tweak the parameters of the Text widget..!!!
          child:DiceRoller()
      ),
    );
  }
}

class TextStyles extends StatelessWidget {
  const TextStyles({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'HELLO WORLD',
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontStyle: FontStyle.italic),
    );
  }
}
