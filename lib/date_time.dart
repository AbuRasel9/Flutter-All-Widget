import 'dart:async';

import 'package:flutter/material.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({super.key});

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  final StreamController<DateTime> _time = StreamController();
  DateTime? newTime;

  getTime() async {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      newTime = DateTime.now();
      _time.sink.add(newTime ?? DateTime.now());
    }
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  void dispose() {
    _time.close(); // Close the stream when disposing.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Widget"),
      ),
      body: Center(
        child: StreamBuilder<DateTime>(
          initialData: DateTime.now(),
          stream: _time.stream,
          builder: (context, snapShot) {
            if (snapShot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapShot.hasError) {
              return Text(snapShot.hasError.toString());
            } else if (!snapShot.hasData) {
              Text("No Time");
            } else {
              return Row(
                 crossAxisAlignment : CrossAxisAlignment. center,
                mainAxisAlignment : MainAxisAlignment. center,
                children: [
                  Text("Hours:${snapShot.data?.hour.toString() ?? "" }",style:  const TextStyle(fontSize:18,fontWeight:FontWeight.bold)),
                  Text(" Minute:${snapShot.data?.minute.toString() ?? ""}",style:  const TextStyle(fontSize:18,fontWeight:FontWeight.bold)),
                  Text(" Minute:${snapShot.data?.second.toString() ?? ""}",style:  const TextStyle(fontSize:18,fontWeight:FontWeight.bold)),
                ],
              );
            }
            return Text(DateTime.now().toString());
          },
        ),
      ),
    );
  }
}
