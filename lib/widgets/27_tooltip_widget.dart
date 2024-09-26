import 'package:flutter/material.dart';

class ToolTipWidget extends StatefulWidget {
  const ToolTipWidget({super.key});

  @override
  State<ToolTipWidget> createState() => _ToolTipWidgetState();
}

class _ToolTipWidgetState extends State<ToolTipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tool Tip Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Tooltip(
              waitDuration: const Duration(microseconds: 300),
              height: 40,
              exitDuration: const Duration(seconds: 1),
              showDuration: const Duration(seconds: 1),
              padding: const EdgeInsets.all(10),
              message: "Thi is a nature image",
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.green,
                  )),
              child: Image.network(
                  "https://images.unsplash.com/photo-1620435363451-b84b06e6de72?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJlJTIwaW1hZ2VzfGVufDB8fDB8fHww")),
        ),
      ),
    );
  }
}
