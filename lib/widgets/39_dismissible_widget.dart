import 'package:flutter/material.dart';

class DismissableWidget extends StatefulWidget {
  const DismissableWidget({super.key});

  @override
  State<DismissableWidget> createState() => _DismissableWidgetState();
}

class _DismissableWidgetState extends State<DismissableWidget> {
  List<String> fruits = ["Apple", "banana", "mango", "orrange"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible Widget"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final item = fruits[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Dismissible(
              behavior: HitTestBehavior.deferToChild,
              //left theke right a swap korle ay message dekhabe
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("left to right swap"),
                      backgroundColor: Colors.red,
                    ),
                  );
                  fruits.remove(item);
                }
                //right theke left a swap korle ay message dekhabe
                else {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("rigth to left"),backgroundColor: Colors.green,));
                  fruits.remove(item);
                }
              },
              key: Key(item),
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
              child: ListTile(
                tileColor: Colors.grey.withOpacity(.4),
                title: Text(item),
              ),
            ),
          );
        },
      ),
    );
  }
}
