import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  //alert dialog box function
  showDialogView() {
    //show dialog widget
    return showDialog(
        context: context,
        builder: (context) {
          //alert dialog widget
          return SingleChildScrollView(
            child: AlertDialog(
              //alertdialog title
              title: const Text("Do You Want to Delete this"),
              //alert dialog content
              content: const Column(
                children: [
                  Text("It is Delete Permanently"),
                ],
              ),
              //alert dialog actions
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Yes"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("No"),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialogView();
          },
          child: const Text("Call Alert Dialog Function4"),
        ),
      ),
    );
  }
}
