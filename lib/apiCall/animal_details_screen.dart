import 'package:flutter/material.dart';

class AnimalDetailsScreen extends StatefulWidget {
  const AnimalDetailsScreen({super.key});

  @override
  State<AnimalDetailsScreen> createState() => _AnimalDetailsScreenState();
}

class _AnimalDetailsScreenState extends State<AnimalDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Animal Details Screen",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Select Animal",st),

          ],
        ),
      ),
    );
  }
}
