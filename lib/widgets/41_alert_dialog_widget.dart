import 'package:flutter/material.dart';

class AlertDialogWidgetTest extends StatefulWidget {
  const AlertDialogWidgetTest({super.key});

  @override
  State<AlertDialogWidgetTest> createState() => _AlertDialogWidgetTestState();
}

class _AlertDialogWidgetTestState extends State<AlertDialogWidgetTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog Widget"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            _showMyDialog(context);
          }, child: const Text("Show Dialog"))
        ],
      ),
    );
  }
}

//alert dialog
Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(

        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        scrollable: true,
        title: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Are you want to delete this",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "If you are delete this item. You cannot recover this file",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content:  Text(
                    "Delete Successfull",
                  ),
                ),
              );
            },
            child: const Text(
              "Delete",
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Cancel",
            ),
          ),
        ],
      );
    },
  );
}
