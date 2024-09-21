import 'package:flutter/material.dart';

/*
  Expanded widget use korle 3ta container dile kono flex jodi na dei tahole
  sob container gula same height nibe
  column er vitor use korle same height nibe
  ar row te use korle same width nibe
  ar flex use korle flex er ratio vabe space nibe


 */

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: Container(
                  width: double.infinity,

              color: Colors.green,
              child: Center(child: Text("Container 1",style: TextStyle(color: Colors.white),)),
            )),
            Expanded(
                child: Container(
                  width: double.infinity,

              color: Colors.red,
              child: Center(child: Text("Container 2",style: TextStyle(color: Colors.white))),
            )),
            Expanded(
                child: Container(
                  width: double.infinity,

              color: Colors.orange,
              child: Center(child: Text("Container 3",style: TextStyle(color: Colors.white))),
            )),
          ],
        ),
      ),
    );
  }
}
