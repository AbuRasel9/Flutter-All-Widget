import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues _rangeValues=RangeValues(.5, 1);
  @override
  Widget build(BuildContext context) {
    RangeLabels _rangeLabels=RangeLabels(_rangeValues.start.toString(), _rangeValues.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Slider"),
      ),
       body: Center(
         child: RangeSlider(
           divisions: 5,
           activeColor: Colors.green,
           inactiveColor: Colors.red,
           labels: _rangeLabels,
           values: _rangeValues , onChanged: (newValue){
           setState(() {
             _rangeValues=newValue;
           });
         },),
       ),
    );
  }
}
