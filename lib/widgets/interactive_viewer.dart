import 'package:flutter/material.dart';

class InteractiveViewerWidget extends StatefulWidget {
  const InteractiveViewerWidget({super.key});

  @override
  State<InteractiveViewerWidget> createState() => _InteractiveViewerWidgetState();
}

class _InteractiveViewerWidgetState extends State<InteractiveViewerWidget> {
  openDialog(){
    showDialog(context: context, builder: (context) {
      return Dialog(
        child: InteractiveViewer(
            maxScale: 5,
            child: Image.asset("assets/images_2.jpg",height: 300,width: 300,fit: BoxFit.cover,)),

      );

    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interactive viewer"),
      ),
      body: ElevatedButton(
        onPressed: (){
          openDialog();

        },
        child: Text("open dialog"),
      )
    );
  }
}
