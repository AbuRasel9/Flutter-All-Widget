import 'package:flutter/material.dart';

class SpacerWidget extends StatefulWidget {
  const SpacerWidget({super.key});

  @override
  State<SpacerWidget> createState() => _SpacerWidgetState();
}

class _SpacerWidgetState extends State<SpacerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spacer Widget"),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.greenAccent,
            child: Text("Container 1"),
          ),
          Spacer(flex: 1,),
          Container(
            height: 100,
            color: Colors.red,
            child: Text("Container 2"),
          ),

        ],
      ),
    );
  }
}
