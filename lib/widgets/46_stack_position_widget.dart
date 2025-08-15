import 'package:flutter/material.dart';

class StackPositionWidget extends StatefulWidget {
  const StackPositionWidget({super.key});

  @override
  State<StackPositionWidget> createState() => _StackPositionWidgetState();
}

class _StackPositionWidgetState extends State<StackPositionWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack and Position Widget"),
      ),
      body: SizedBox(
        height: 400,
        width: 400,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 200,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 150,
              top: 200,
              child: Container(
                height: 400,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.purple
                ),
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                height: 50,
                width: 300,
                decoration: const BoxDecoration(
                  color: Colors.red
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
