//scale transitation use  kore akta image coto theke animation er maddhome boro hoi
//coto theke boro hobe every time

import 'package:flutter/material.dart';

/*
class ScaleTransitaionWidget extends StatefulWidget {
  const ScaleTransitaionWidget({super.key});

  @override
  State<ScaleTransitaionWidget> createState() => _ScaleTransitaionWidgetState();
}

class _ScaleTransitaionWidgetState extends State<ScaleTransitaionWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(
      seconds: 1,
    ),
    //repeat(reverse: true) use korle bar bar coto and boro hobe
    //kintu ata use na kore initState a _controller call dile akbar e boro hobe
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Icon(
            Icons.favorite,
            size: 140,
          ),
        ),
      ),
    );
  }
}

*/

//ata akbar e animated hoye boro hobe repeat hobe na


class ScaleTransitaionWidget extends StatefulWidget {
  const ScaleTransitaionWidget({super.key});

  @override
  State<ScaleTransitaionWidget> createState() => _ScaleTransitaionWidgetState();
}

class _ScaleTransitaionWidgetState extends State<ScaleTransitaionWidget>


    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
      //repeat(reverse: true) use korle bar bar coto and boro hobe
      //kintu ata use na kore initState a _controller call dile akbar e boro hobe
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
_controller.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Icon(
            Icons.favorite,
            size: 140,
          ),
        ),
      ),
    );
  }
}




