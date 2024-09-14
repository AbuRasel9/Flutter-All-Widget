import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;
  List<Widget> screens = [
    Text("Home",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
    Text("Profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
    Text("Settings",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation Bar widget"),
        ),
        body: Center(child: screens[_currentIndex]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showSelectedLabels: true,
          selectedItemColor: Colors.red,
            unselectedItemColor: Colors.green,
            onTap: (index){
              setState(() {
                _currentIndex=index;


              });
            },
            selectedFontSize: 20, items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ]));
  }
}
