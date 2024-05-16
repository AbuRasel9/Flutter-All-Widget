import 'package:flutter/material.dart';

/*
  simple alert dialog box a action thake na children  ar title thake
*/

class SimpleDialogWidget extends StatefulWidget {
  const SimpleDialogWidget({super.key});

  @override
  State<SimpleDialogWidget> createState() => _SimpleDialogWidgetState();
}

class _SimpleDialogWidgetState extends State<SimpleDialogWidget> {
  simpleAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text("Select Theme "),
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Dark Theme")),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Light Theme")),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("System Theme")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Alert Dialog Widget"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              simpleAlertDialog(context);
            },
            child: const Text("Simple Dialog")),
      ),
    );
  }
}
