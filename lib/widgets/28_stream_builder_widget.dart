import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({super.key});

  @override
  State<StreamBuilderWidget> createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
   late  StreamController<int> _streamController;
   addNumber() async {
     for(int i=0;i<20;i++){
       await Future.delayed(const Duration(seconds: 1));
       _streamController.sink.add(i);
     }
   }
   @override
  void initState() {
     _streamController = StreamController<int>();
     super.initState();
    addNumber();
  }
   @override
   void dispose() {
     _streamController.close(); // Close the stream when disposing.
     super.dispose();}




     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Builder Widge"),
      ),
      body:Center(
        child: StreamBuilder(stream: _streamController.stream,
            initialData: 0,
            builder: (BuildContext,AsyncSnapshot<int>snapshot){
              print("-------------------${snapshot.data}");

                if(snapshot.connectionState==ConnectionState.waiting){
                  return const Center(child: CircularProgressIndicator(),);
                }else if(snapshot.hasError){
                  return Text(" ${snapshot.hasError}");
                }else if(!snapshot.hasData){
                  return const Text("No data Available");
                }else{
                  return Text(snapshot.data.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),);
                }
            }),
      )
    );
  }
}
