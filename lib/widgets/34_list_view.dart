import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),

        //listview use korle auto scroll kora jai but column use korle auto scroll kora jaina (singleChildScrollView )use korte hoi
        child: ListView(
          children: const [
            Card(
              child: ListTile(
                title: Text("Name:Rasel"),
                subtitle: Text("Address : Lalpur"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Name:Rasel"),
                subtitle: Text("Address : Lalpur"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Name:Rasel"),
                subtitle: Text("Address : Lalpur"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Name:Rasel"),
                subtitle: Text("Address : Lalpur"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Name:Rasel"),
                subtitle: Text("Address : Lalpur"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Name:Rasel"),
                subtitle: Text("Address : Lalpur"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Name:Rasel"),
                subtitle: Text("Address : Lalpur"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Name:Rasel"),
                subtitle: Text("Address : Lalpur"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Name:Rasel"),
                subtitle: Text("Address : Lalpur"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Name:Rasel"),
                subtitle: Text("Address : Lalpur"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Name:Rasel"),
                subtitle: Text("Address : Lalpur"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
