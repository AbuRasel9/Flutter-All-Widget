import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 12, minute: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lock_clock),
          onPressed: () async {
            TimeOfDay? newTime = await showTimePicker(
              context: context,
              initialTime: _timeOfDay,
            );
            if (newTime != null) {
              setState(() {
                _timeOfDay = newTime;
              });
            }
          }),
      appBar: AppBar(
        title: Text("Show Time Picker"),
      ),
      body: Center(
        child: Text("${_timeOfDay.hour} : ${_timeOfDay.minute}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
