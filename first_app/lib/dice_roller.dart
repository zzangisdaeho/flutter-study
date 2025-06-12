import 'dart:math';

import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var imagePath = 'assets/images/dice-${randomizer.nextInt(6) + 1}.png';

  void rollDice() {
    setState(() {
      imagePath = 'assets/images/dice-${randomizer.nextInt(6) + 1}.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, width: 200),
        const SizedBox(height: 80),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(5),
            backgroundColor: const Color.fromARGB(255, 140, 51, 51),
            foregroundColor: const Color.fromARGB(255, 53, 144, 95),
          ),
          child: const StyledText("PRESS ME"),
        ),
      ],
    );
  }
}
