import 'package:flutter/material.dart';

class SimpleDialogWidgetPart2 extends StatefulWidget {
  const SimpleDialogWidgetPart2({super.key});

  @override
  State<SimpleDialogWidgetPart2> createState() =>
      _SimpleDialogWidgetPart2State();
}

class _SimpleDialogWidgetPart2State extends State<SimpleDialogWidgetPart2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    title: Text("Do You Want to Delete This"),
                    contentPadding: EdgeInsets.all(20),
                    children: [
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Yes ")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("NO"))
                        ],
                      )
                    ],
                  );
                });
          },
          child: Text("Show Simple Dialog"),
        ),
      ),
    );
  }
}
