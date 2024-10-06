import 'package:flutter/material.dart';

class TableWidget extends StatefulWidget {
  const TableWidget({super.key});

  @override
  State<TableWidget> createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Table(
          border: TableBorder.all(),
          children: const [
            TableRow(
              children: [
                Center(child: Text("SI",style: TextStyle(fontWeight: FontWeight.bold),)),

                Center(child: Text("Name",style: TextStyle(fontWeight: FontWeight.bold))),
                Center(child: Text("ID",style: TextStyle(fontWeight: FontWeight.bold))),
              ]
            ),

            TableRow(
              children: [
                Center(child: Text("0")),

                Center(child: Text("Abu Rasel")),
                Center(child: Text("201389038")),
              ]
            ),
            TableRow(
              children: [
                Center(child: Text("1",)),

                Center(child: Text("Hanif",)),
                Center(child: Text("193023038")),
              ]
            ),
            TableRow(
                children: [
                  Center(child: Text("3",)),

                  Center(child: Text("Saif")),
                  Center(child: Text("201023038")),
                ]
            ),

          ],

        ),
      ),
    );
  }
}
