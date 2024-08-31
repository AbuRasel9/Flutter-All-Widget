//This is  show FullScreen Alert Dialog

import 'package:flutter/material.dart';

class FullScreenAlertDialogWidget extends StatefulWidget {
  const FullScreenAlertDialogWidget({super.key});

  @override
  State<FullScreenAlertDialogWidget> createState() =>
      _FullScreenAlertDialogWidgetState();
}

class _FullScreenAlertDialogWidgetState
    extends State<FullScreenAlertDialogWidget> {
  /*
    show full screen alert dialog ay dialog box a listview builder use korle o content harabe na
  */
  showFullScreenAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog.fullscreen(
            child: Column(
              children: [
                //akhane list view use kore expanded na dile text show korbe na
                Expanded(
                  child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return Text("Text $index");
                      }),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return Text("list view $index");
                      }),
                ),
              ],
            ),
          );
        });
  }

  //it is simple dalog for use purpuse if add listview builder than this dialog box content are remove
  simpleDialog(context) {
    return showDialog(

        /*
        barrier color use korle
        full screen er background a oi color show kore
      */
        // barrierColor: Colors.red,
        /*
      /barrier dismissible use kora hoice karon jodi dialog box

       open obosthai screen a click korle harai na jai

       */
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Dialog(
              //ata dialog box a animation add kore
              insetAnimationCurve: Curves.easeInOutQuad,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              //inset padding use kora hoice padding er jonno
              insetPadding: const EdgeInsets.all(10),
              //use for dialog background color
              backgroundColor: Colors.greenAccent,
              elevation: 0.01,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Do You Want to Delete This"),
                  Row(
                    children: [
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
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple show dialog and Alert Dialog"),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    simpleDialog(context);
                  },
                  child: const Text("show simple dialog"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    showFullScreenAlertDialog(context);
                  },
                  child: Text("show full screen alert dialog"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
