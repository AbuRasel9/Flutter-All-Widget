import 'package:flutter/material.dart';

/*
  align widget use kore kno kichu align kora jai
 */

class AlignWidget extends StatefulWidget {
  const AlignWidget({super.key});

  @override
  State<AlignWidget> createState() => _AlignWidgetState();
}

class _AlignWidgetState extends State<AlignWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 200,

        //align widget
        child: const Align(
            //align flutter logo bottom left
            alignment: Alignment.bottomLeft,
            child: FlutterLogo(
              size: 50,
            )),
      ),
    );
  }
}
