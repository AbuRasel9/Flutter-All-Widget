import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({super.key});

  @override
  State<FutureBuilderWidget> createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  Future<String> getData() async {
    await Future.delayed(Duration(seconds: 3));
    return "It Works";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder Widget"),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(snapshot.data),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Colors.greenAccent,
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text("Refresh")),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
