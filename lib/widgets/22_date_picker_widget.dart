import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime _dateTime=DateTime(2008);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" Day: ${_dateTime.day} ,Month: ${_dateTime.month}, Year: ${_dateTime.year}"),
              SizedBox(height: 15,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                    onPressed: () async {



                  DateTime? _pickedDate=await showDatePicker(
                    //initial entry mode DatePickerEntryMode.input dile get date a click korle form feild open hobe first a
                    // initialEntryMode: DatePickerEntryMode.input,

                    ///initialDatePickerMode: DatePickerMode.year, dile first a calender a year show korbe
                    // initialDatePickerMode: DatePickerMode.year,
                    initialDate: _dateTime,
                      //help text calender er title er text change kore
                      helpText:"Select Booking Date",
                      //cancel text ar confrim text  nicher text change kore
                      cancelText: "Not Now ",
                      confirmText: "Book",
                      errorFormatText: 'Enter valid date',
                      errorInvalidText: 'Enter date in valid range',


                      //input form feild er hint text
                      fieldHintText: "Enter Book Date",
                      //input form feild er label text
                      fieldLabelText: "Month/Day/Year",

 



                      context: context, firstDate: DateTime(1999), lastDate: DateTime.now());
                  if(_pickedDate!=null || _pickedDate!=_dateTime){
                    setState(() {
                      _dateTime=_pickedDate ?? _dateTime;
                    });
                  }
                }, child: Text("Get Date")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
