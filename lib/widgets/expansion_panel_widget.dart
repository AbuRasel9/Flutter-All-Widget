import 'package:flutter/material.dart';

//what is the difference between expansion panel and expansion tile


/*| বৈশিষ্ট্য          | **ExpansionPanel**                                                | **ExpansionTile**                              |
| ------------------ | ----------------------------------------------------------------- | ---------------------------------------------- |
| ✅ UI Control       | কাস্টমাইজেশন বেশি, জটিল UI করা যায়                                | সাধারণ/simple UI-র জন্য ভালো                   |
| 🎯 ব্যবহার ক্ষেত্র | Complex list, card-style UI, FAQ systems, form sections           | Simple lists, sidebar, settings menu           |
| 🔄 Multiple expand | Multiple panel একসাথে expand করতে পারো অথবা একটার পর একটা         | সাধারণত একটা tile-ই expand করা হয়              |
| 🎨 UI Layout       | Card style layout, `ExpansionPanelList` এর ভেতরে রাখতে হয়         | Simple ListTile এর মতো দেখতে                   |
| 🔧 Flexibility     | Header ও Body পুরো custom করা যায়                                 | Header fixed layout (leading, title, subtitle) |
| 📦 Use Case        | যদি তুমি একাধিক panel manage করতে চাও একসাথে, toggle/animation সহ | যদি UI সহজ ও খুব customizable না হয়            |*/


class ExpansionPanelWidget extends StatefulWidget {
  const ExpansionPanelWidget({super.key});

  @override
  State<ExpansionPanelWidget> createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  bool isActive = false;
  String headerTitle = "Show Country Name";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expansion Panel Widget"),
        ),
        body: Column(
          children: [
            ExpansionPanelList(
              dividerColor: Colors.red,
                expandIconColor: Colors.yellowAccent,
                expansionCallback: (panelIndex, isExpanded) {
                  isActive = !isActive;
                  isActive ? headerTitle : "Country List";
                  setState(() {});
                },
                children: [
                  ExpansionPanel(
                    highlightColor: Colors.amber,
                    backgroundColor: Colors.green,
                      headerBuilder: (context, isExpanded) {
                        return Center(
                          child: Text(
                            headerTitle,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white),
                          ),
                        );
                      },
                      body: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Colors.green;
                                  }
                                  return Colors.black;
                                },
                              ),
                            ),
                            onPressed: () => null,
                            child: Text("Bangladesh"),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Colors.green;
                                  }
                                  return Colors.black;
                                },
                              ),
                            ),
                            onPressed: () => null,
                            child: Text("India"),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Colors.green;
                                  }
                                  return Colors.black;
                                },
                              ),
                            ),
                            onPressed: () => null,
                            child: Text("Pakistan"),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Colors.green;
                                  }
                                  return Colors.black;
                                },
                              ),
                            ),
                            onPressed: () => null,
                            child: Text("Nepal"),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Colors.green;
                                  }
                                  return Colors.black;
                                },
                              ),
                            ),
                            onPressed: () => null,
                            child: Text("Bhutan"),
                          ),
                        ],
                      ),
                      isExpanded: isActive,
                      canTapOnHeader: true)
                ]),
            ExpansionPanelList(
              dividerColor: Colors.red,
                expandIconColor: Colors.yellowAccent,
                expansionCallback: (panelIndex, isExpanded) {
                  isActive = !isActive;
                  isActive ? headerTitle : "Country List";
                  setState(() {});
                },
                children: [
                  ExpansionPanel(
                    highlightColor: Colors.amber,
                    backgroundColor: Colors.green,
                      headerBuilder: (context, isExpanded) {
                        return Center(
                          child: Text(
                            headerTitle,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white),
                          ),
                        );
                      },
                      body: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Colors.green;
                                  }
                                  return Colors.black;
                                },
                              ),
                            ),
                            onPressed: () => null,
                            child: Text("Bangladesh"),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Colors.green;
                                  }
                                  return Colors.black;
                                },
                              ),
                            ),
                            onPressed: () => null,
                            child: Text("India"),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Colors.green;
                                  }
                                  return Colors.black;
                                },
                              ),
                            ),
                            onPressed: () => null,
                            child: Text("Pakistan"),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Colors.green;
                                  }
                                  return Colors.black;
                                },
                              ),
                            ),
                            onPressed: () => null,
                            child: Text("Nepal"),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Colors.green;
                                  }
                                  return Colors.black;
                                },
                              ),
                            ),
                            onPressed: () => null,
                            child: Text("Bhutan"),
                          ),
                        ],
                      ),
                      isExpanded: isActive,
                      canTapOnHeader: true)
                ]),
          ],
        ));
  }
}
