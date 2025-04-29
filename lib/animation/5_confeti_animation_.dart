import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
//akhane (blastDirection) er value and direction
//akhane (pi) mane right theke left a jabe
//(pi/2) mane top theke bottom a jabe
//(-pi/2,) mane bottom theke top a jabe
//(0) dile left theke right a jabe


class ConfetiAnimationv2 extends StatefulWidget {
  const ConfetiAnimationv2({super.key});

  @override
  State<ConfetiAnimationv2> createState() => _ConfetiAnimationv2State();
}

class _ConfetiAnimationv2State extends State<ConfetiAnimationv2> {
  late ConfettiController _controllerLeft = ConfettiController();

//init state a ay contorler a duration set kora hoice

  @override
  void initState() {
    super.initState();
    _controllerLeft = ConfettiController(duration: const Duration(seconds: 5));
  }

  //dispose kora hoice ay controller ke
  @override
  void dispose() {
    super.dispose();
    _controllerLeft.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Confetti"),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: ConfettiWidget(
              minimumSize: Size(10, 10),
              maximumSize: Size(20, 20),

              //confetti controller holo animation start
              confettiController: _controllerLeft,
              blastDirectionality: BlastDirectionality.explosive,
              //direction set kore
              blastDirection: pi,
              //radial value left
              particleDrag: 0.05,
              // apply drag to the confetti
              //koto gula card ber hobe tar parcentage
              emissionFrequency: 0.9,
              // how often it should emit
              numberOfParticles: 20,
              // number of particles to emit
              ///koto first ber hobe
              gravity: 0.10,
              // gravity - or fall speed
              shouldLoop: false,
              colors: const [Colors.green, Colors.blue, Colors.pink],
              // manually specify the colors to be used
              strokeWidth: 1,
              strokeColor: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () {
                  _controllerLeft.play();
                },
                child: const Text("Center Left")),
          )
        ],
      ),
    );
  }
}
