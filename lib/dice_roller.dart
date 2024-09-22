import 'package:flutter/material.dart';
import 'dart:math';

final randomizer =
    Random(); //OVO RADIM KAKO NE BIH SVAKI PUT PRAVIO OBJECT RANDOM, VEC GA NAPRAVIM JEDNOM OVDE I ONDA DOLE KORISTIM TAJ JEDAN. BITNO ZBOG MEMORIJE.

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var kockica = 2;

  void baciKockicu() {
    setState(() {
      kockica = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$kockica.png",
          width: 250,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: baciKockicu,
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 14, 2, 124),
              textStyle: const TextStyle(fontSize: 25),
              padding: const EdgeInsets.all(20)),
          child: const Text(
            "Baci kockicu",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
