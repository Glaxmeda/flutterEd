import 'package:flutter/material.dart';
import 'package:basics/styled_text.dart';
import 'package:basics/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  GradientContainer.purple({super.key})
      : colors = [Colors.deepPurple, Colors.indigo];


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: startAlignment, end: endAlignment)),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
