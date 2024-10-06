import 'dart:async';

import 'package:flutter/material.dart';

class ClockRealTime extends StatefulWidget {
  const ClockRealTime({super.key});

  @override
  State<ClockRealTime> createState() => _ClockRealTimeState();
}

class _ClockRealTimeState extends State<ClockRealTime> {
  final StreamController<DateTime> _time = StreamController();
  DateTime? newTime;

  getTime() async {
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
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
        title: const Text("Date Time Widget"),
      ),
      body: Center(
        child: StreamBuilder<DateTime>(
          initialData: DateTime.now(),
          stream: _time.stream,
          builder: (context, snapShot) {
            if (snapShot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapShot.hasError) {
              return Text(snapShot.hasError.toString());
            } else if (!snapShot.hasData) {
              const Text("No Time");
            } else {
              return Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Expanded(
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(snapShot.data?.hour.toString() ?? "",
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              const Text(
                                "HOURS",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(snapShot.data?.minute.toString() ?? "",
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white,)),
                            const Text(
                              "MINUTE",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                      
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),

                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(snapShot.data?.second.toString() ?? "",
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white)),
                            const Text(
                              "SEC",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                      
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              );
            }
            return Text(DateTime.now().toString());
          },
        ),
      ),
    );
  }
}
