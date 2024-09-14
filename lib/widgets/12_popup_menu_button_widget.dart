import 'package:flutter/material.dart';

class PopUpMenuButtonWidget extends StatefulWidget {
  const PopUpMenuButtonWidget({super.key});

  @override
  State<PopUpMenuButtonWidget> createState() => _PopUpMenuButtonWidgetState();
}

class _PopUpMenuButtonWidgetState extends State<PopUpMenuButtonWidget> {
  String _popupMenuValue="";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Popup Menu Button"),
        actions: [
          PopupMenuButton(
            iconColor: Colors.red,
            style: ButtonStyle(
              backgroundColor:MaterialStateProperty.all(Colors.greenAccent),
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
              shape:MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)))
            ),
            tooltip: "Popup menu",
              onSelected: (value){
                setState(() {
                  _popupMenuValue=value;
                });

              },
              itemBuilder: (context)=>[

            PopupMenuItem(child: Text("Page 1"),value: "Page1",),
            PopupMenuItem(child: Text("Page 2"),value: "Page2",),
            PopupMenuItem(child: Text("Page 3"),value: "Page3",),
          ])
        ],
      ),
      body: Center(
        child: Text(" This is $_popupMenuValue"),
      ),
    );
  }
}
