import 'package:flutter/material.dart';

/*
    Grid tile widget use kore header footer add kora jai sathe text o add
    kora jai
* */

class GridTileWidget extends StatefulWidget {
  const GridTileWidget({super.key});

  @override
  State<GridTileWidget> createState() => _GridTileWidgetState();
}

class _GridTileWidgetState extends State<GridTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Tile Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: GridTile(
              header: Container(
                height: 100,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent
                ),

                child: Text("header"),

              ),
              footer:  Container(
                height: 100,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                width: double.infinity,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
                child: Text("footer"),
              ),

              child:  Container(

                height: double.infinity,
                width: double.infinity,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orangeAccent
                ),
              ),),
        ),
      ),
    );
  }
}
