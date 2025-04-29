import 'package:flutter/material.dart';

class AnimatiedBuilderWidget extends StatefulWidget {
  const AnimatiedBuilderWidget({super.key});

  @override
  State<AnimatiedBuilderWidget> createState() => _AnimatiedBuilderWidgetState();
}

class _AnimatiedBuilderWidgetState extends State<AnimatiedBuilderWidget>
    with TickerProviderStateMixin {
  late Animation _heratbeatAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _heratbeatAnimation = Tween(begin: 180, end: 160).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.easeOutBack));
    _animationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _animationController.repeat();
      }
    });
    //forward starts the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  // ?? AnimationController(vsync: this)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Builder"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Container(
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.blue,
                      size: _heratbeatAnimation.value,
                    ),
                  ),
                );
              },
            )));
  }
}
