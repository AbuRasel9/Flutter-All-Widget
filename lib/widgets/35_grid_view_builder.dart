import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatefulWidget {
  const GridViewBuilderWidget({super.key});

  @override
  State<GridViewBuilderWidget> createState() => _GridViewBuilderWidgetState();
}

class _GridViewBuilderWidgetState extends State<GridViewBuilderWidget> {
  List<String> countryName = [
    "Bangladesh",
    "India",
    "Pakistan",
    "Japan",
    "Nepal",
    "Bhutan"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Girdview Builder Widget"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
        itemCount: countryName.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 3,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.purple,
            child: Center(
              child: Text(
                countryName[index],
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
