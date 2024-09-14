import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/12_popup_menu_button_widget.dart';
import 'package:flutter_widget/widgets/13_page_view_widget.dart';
import 'package:flutter_widget/widgets/14_bottom_navigation_bar.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigationBarWidget(),
    );
  }
}
