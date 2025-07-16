/*
import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


const showSnackBar = false;
const expandChildrenOnReady = true;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Animated Tree Demo',

      locale: Locale('en'),
      supportedLocales: [Locale('en'), Locale('ar')],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Simple Animated Tree Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  TreeViewController? _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: ValueListenableBuilder<bool>(
        valueListenable: sampleTree.expansionNotifier,
        builder: (context, isExpanded, _) {
          return FloatingActionButton.extended(
            onPressed: () {
              if (sampleTree.isExpanded) {
                _controller?.collapseNode(sampleTree);
              } else {
                _controller?.expandAllChildren(sampleTree);
              }
            },
            label: isExpanded
                ? const Text("Collapse all")
                : const Text("Expand all"),
          );
        },
      ),
      body: TreeView.simple(
        tree: sampleTree,
        showRootNode: true,
        expansionIndicatorBuilder: (context, node) =>
            ChevronIndicator.rightDown(
              tree: node,
              color: Colors.blue[700],
              padding: const EdgeInsets.all(8),
            ),
        indentation: const Indentation(style: IndentStyle.roundJoint),
        onItemTap: (item) {
          if (kDebugMode) print("Item tapped: ${item.key}");

          if (showSnackBar) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Item tapped: ${item.key}"),
                duration: const Duration(milliseconds: 750),
              ),
            );
          }
        },
        onTreeReady: (controller) {
          _controller = controller;
          if (expandChildrenOnReady) controller.expandAllChildren(sampleTree);
        },
        builder: (context, node) => Card(
          color: Colors.redAccent,
          child: ListTile(
            title: Text("Item ${node.level}-${node.key}"),
            subtitle: Text('Level ${node.level}'),
          ),
        ),
      ),
    );
  }
}

final sampleTree = TreeNode.root()
  ..addAll([
    TreeNode(key: "0A")..add(TreeNode(key: "0A1A")),
    TreeNode(key: "0C")
      ..addAll([
        TreeNode(key: "0C1A"),
        TreeNode(key: "0C1B"),
        TreeNode(key: "0C1C")
          ..addAll([
            TreeNode(key: "0C1C2A")
              ..addAll([
                TreeNode(key: "0C1C2A3A"),
                TreeNode(key: "0C1C2A3B"),
                TreeNode(key: "0C1C2A3C"),
              ]),
          ]),
      ]),
    TreeNode(key: "0D"),
    TreeNode(key: "0E"),
  ]);*/
import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/33_navigation_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TreeViewScreen(),
    );
  }
}

class TreeViewScreen extends StatefulWidget {
  const TreeViewScreen({super.key});

  @override
  State<TreeViewScreen> createState() => _TreeViewScreenState();
}

class _TreeViewScreenState extends State<TreeViewScreen> {
  TreeViewController? _controller;
  bool expandChildrenOnReady = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ValueListenableBuilder(
        valueListenable: sampleTree.expansionNotifier,
        builder: (context, isExpanded, _) {
          return FloatingActionButton(
            child: isExpanded
                ? const Text("Collapse all")
                : const Text("Expanded All"),
            onPressed: () {
              if (sampleTree.isExpanded) {
                _controller?.collapseNode(sampleTree);
              } else {
                _controller?.expandAllChildren(sampleTree);
              }
            },
          );
        },
      ),
      appBar: AppBar(
        title: const Text("Tree View Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: TreeView.simple(
                tree: sampleTree,
                showRootNode: true,
                onItemTap: (value) {
                  debugPrint("Item Tapped ${value.key}");
                },
                //file collapse hobe nki expand hobe ata akhane get kora hoice
                onTreeReady: (controller) {
                  _controller = controller;
                  if (expandChildrenOnReady) {
                    controller.expandAllChildren(sampleTree);
                  }
                },
                //ata expand and collapse er icon er design
                //ChevronIndicator.upDown diye bujhano hoice opor theke niche fule khulbe

                expansionIndicatorBuilder: (p0, p1) => ChevronIndicator.upDown(
                  tree: p1,
                  color: Colors.redAccent,
                ),
                builder: (context, item) {
                  return ListTile(
                    leading: const Icon(Icons.file_copy),
                    title: Text("Item ${item.level}-${item.key}"),
                    subtitle: Text("Level ${item.level}"),
                  );
                },
              ),
            )
/*
            TreeView.indexed(builder: (context, item) {

            }, tree:),
*/
          ],
        ),
      ),
    );
  }
}

final sampleTree = TreeNode.root()
  ..addAll([
    TreeNode(key: "A1")..add(TreeNode(key: "0A1")),
  ]);
