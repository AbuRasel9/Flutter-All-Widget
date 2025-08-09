import 'package:flutter/material.dart';

class ModalBottomSheetWidget extends StatelessWidget {
  const ModalBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modal Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showModalBottomSheet(
            elevation: 0,
            isDismissible: false,
            useSafeArea: true,
            context: context, builder: (context) {
            return const Column(
              children: [
                ListTile(
                  title: Text("Abu Rasel"),
                  subtitle: Text("rasel@gmail.com"),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.edit),

                ),
                ListTile(
                  title: Text("Rakib"),
                  subtitle: Text("rakib@gmail.com"),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.edit),

                ),
                ListTile(
                  title: Text("Rahim"),
                  subtitle: Text("rahim@gmail.com"),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.edit),

                ),
                ListTile(
                  title: Text("Karim"),
                  subtitle: Text("karim@gmail.com"),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.edit),

                ),
                ListTile(
                  title: Text("Shafiq"),
                  subtitle: Text("shafiq@gmail.com"),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.edit),

                ),
                ListTile(
                  title: Text("Ifteraz"),
                  subtitle: Text("ifteraz@gmail.com"),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.edit),

                ),
              ],
            );
          },);
        }, child: Text("Show Bottom sheet")),
      ),
    );
  }
}
