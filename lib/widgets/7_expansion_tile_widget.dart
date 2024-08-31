import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({super.key});

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  int? _select;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Expansion Tile",
        ),
      ),
      body: ExpansionTile(
        title: Text(
          "Multiple choice ",
        ),
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return ChoiceChip(
                  selectedColor: Colors.orange,
                  label: Text("item $index",style: TextStyle(color: _select==index?Colors.white:Colors.black),),
                  selected: _select == index,
                  onSelected: (bool newSelectVlue) {
                    _select = newSelectVlue ? index : null;
                    setState(() {

                    });
                  },
                );
              })
        ],
      ),
    );
  }
}
