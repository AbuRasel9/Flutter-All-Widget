import 'package:flutter/material.dart';

class GridPaperWidget extends StatefulWidget {
  const GridPaperWidget({super.key});

  @override
  State<GridPaperWidget> createState() => _GridPaperWidgetState();
}

class _GridPaperWidgetState extends State<GridPaperWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Paper /graph paper"),
      ),
      body: const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: GridPaper(
          interval: 150,
          color: Colors.black,
          divisions: 2,
        ),
      ),
    );
  }
}
