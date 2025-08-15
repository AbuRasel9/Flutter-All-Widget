import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  List<Tab> tabbarItem = [
    const Tab(
      text: "Home",
      icon: Icon(Icons.home_outlined),
    ),
    const Tab(
      text: "Email",
      icon: Icon(Icons.email_outlined),
    ),
    const Tab(
      text: "Dashboard",
      icon: Icon(Icons.dashboard),
    ),
    const Tab(
      text: "Profile",
      icon: Icon(
        Icons.person_4_sharp,
      ),
    ),
  ];

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      if (!tabController.indexIsChanging) {
        selectedIndex = tabController.index;
        setState(() {});
      }
    });

    super.initState();
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          controller: tabController,
          tabs: tabbarItem,
        ),
        title: Text("Tabbar ${tabController.index}"),
      ),
      body: Center(
        child: TabBarView(controller: tabController, children:  [
          Center(
            child: Text(
              "Home $selectedIndex",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Email $selectedIndex",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Dashboard $selectedIndex",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Profile $selectedIndex",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}
