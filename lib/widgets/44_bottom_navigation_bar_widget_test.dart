import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/16_modal_bottom_sheet_widget.dart';
import 'package:flutter_widget/widgets/34_pagination_widget.dart';
import 'package:flutter_widget/widgets/35_grid_view_builder.dart';
import 'package:flutter_widget/widgets/39_dismissible_widget.dart';

class BottomNavigationBarWidgetTest extends StatefulWidget {
  const BottomNavigationBarWidgetTest({super.key});

  @override
  State<BottomNavigationBarWidgetTest> createState() =>
      _BottomNavigationBarWidgetTestState();
}

class _BottomNavigationBarWidgetTestState
    extends State<BottomNavigationBarWidgetTest> {
  int selectedScreen = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          DismissableWidget(),
          GridViewBuilderWidget(),
          PaginationWidget(),
          ShowModalBottomSheetWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedScreen,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home_outlined),
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.search_off_outlined),
              icon: Icon(
                Icons.search,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.email_outlined),
              icon: Icon(
                Icons.email,
              ),
              label: "Email"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.people_alt_outlined),
              icon: Icon(
                Icons.person_4_sharp,
              ),
              label: "Profile"),
        ],
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.grey.shade500,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        onTap: (index) {
          selectedScreen = index;
          pageController.jumpToPage(index);
          setState(() {});
        },
      ),
      appBar: AppBar(
        title: const Text("Bottom navigation bar widget,"),
      ),
    );
  }
}
