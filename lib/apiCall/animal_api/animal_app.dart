import 'package:flutter/material.dart';
import 'package:http/http.dart';
class AnimalApp extends StatefulWidget {
  const AnimalApp({super.key});

  @override
  State<AnimalApp> createState() => _AnimalAppState();
}

class _AnimalAppState extends State<AnimalApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animal App"),
      ),
    );
  }
}
