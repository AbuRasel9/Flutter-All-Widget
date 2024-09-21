import 'package:flutter/material.dart';

class GridTileBarWidget extends StatefulWidget {
  const GridTileBarWidget({super.key});

  @override
  State<GridTileBarWidget> createState() => _GridTileBarWidgetState();
}

/*
  grid tile bar onek ta list tile er moto
* */

class _GridTileBarWidgetState extends State<GridTileBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid tile bar Widget"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridTileBar(
            title: Text("This is title"),
            subtitle: Text("This is Subtitle"),
            leading: Icon(Icons.add),
            backgroundColor: Colors.lightBlue,
            trailing: Icon(Icons.person),
          ),
        );
      })
    );
  }
}
