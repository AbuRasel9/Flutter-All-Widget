import 'package:flutter/material.dart';

class InteractiveViewerWidget extends StatefulWidget {
  const InteractiveViewerWidget({super.key});

  @override
  State<InteractiveViewerWidget> createState() => _InteractiveViewerWidgetState();
}

class _InteractiveViewerWidgetState extends State<InteractiveViewerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interactive viewer"),
      ),
      body: InteractiveViewer(
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.centerLeft,
        child: Center(
          child: Container(
            alignment: Alignment.center,
            color: Colors.red,
            height: 300,
            width: 600,
            child: FlutterLogo(
          size: double.infinity,
            ),

          ),
        ),
      ),
    );
  }
}
