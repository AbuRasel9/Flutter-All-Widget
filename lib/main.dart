import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/1_alert_dialog.dart';
import 'package:flutter_widget/widgets/2_full_screen_alert_dialog.dart';
import 'package:flutter_widget/widgets/3_simple_dialog_widget.dart';
import 'package:flutter_widget/widgets/4_aligh_widget.dart';
import 'package:flutter_widget/widgets/5_animated_align.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedAlignWidget(),
    );
  }
}
