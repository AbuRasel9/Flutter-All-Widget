import 'package:flutter/material.dart';

class FlowWidget extends StatefulWidget {
  const FlowWidget({super.key});

  @override
  State<FlowWidget> createState() => _FlowWidgetState();
}

class _FlowWidgetState extends State<FlowWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flow Widget"),
      ),
      body: AnimatedBuilder(
        animation: _animation,
        builder: (BuildContext context, Widget? child) {
          return Flow(
            delegate: FlowWidgetDelegate(
              animation: _animation,
              elementSpacing: 35,
              iconSpacing: 10,
              curve: Curves.ease,
            ),
            children: [
              CustomFloatingButton(
                iconData: Icons.phone,
                onPressed: () {},
              ),
              CustomFloatingButton(
                iconData: Icons.email,
                onPressed: () {},
              ),
              CustomFloatingButton(
                iconData: Icons.rss_feed,
                onPressed: () {},
              ),
              CustomFloatingButton(
                iconData: Icons.more_horiz,
                onPressed: () async {
                  if (_controller.isCompleted) {
                    await _controller.reverse();
                  } else {
                    await _controller.forward();
                  }
                },
              )
            ],
          );
        },
      ),
    );
  }
}

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton(
      {super.key, required this.iconData, required this.onPressed});

  final IconData iconData;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(
        iconData,
        size: 30,
      ),
    );
  }
}

class FlowWidgetDelegate extends FlowDelegate {
  const FlowWidgetDelegate({
    required this.animation,
    required this.elementSpacing,
    required this.iconSpacing,
    required this.curve,
  });

  final Animation<double> animation;
  final double elementSpacing;
  final double iconSpacing;
  final Curve curve;

  @override
  void paintChildren(FlowPaintingContext context) {
    final size = context.size;
    final x = size.width;
    final y = size.height;
    for (int i = 0; i < context.childCount; i++) {
      if (i == context.childCount - 1) {
        context.paintChild(
          i,
          transform: Matrix4.translationValues(
            x - 50 - elementSpacing,
            y - 50 - elementSpacing,
            0,
          ),
        );
      } else {
        var offset = 0.0;
        if (animation.value == 0) {
          offset = 0;
        } else {
          offset = (curve.transform(animation.value) * 40) +
              (iconSpacing * context.childCount);
        }
        context.paintChild(i,
            transform: Matrix4.translationValues(
                x - 50 - elementSpacing, y - offset * (i + 1) - 85, 0));
      }
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return true;
  }
}