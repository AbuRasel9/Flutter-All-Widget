import 'package:flutter/material.dart';
import 'package:flutter_widget/animation/confeti_animation_.dart';
import 'package:flutter_widget/widgets/18_search_data/search_provider.dart';
import 'package:flutter_widget/widgets/31_reorderable_list_view.dart';
import 'package:flutter_widget/widgets/interactive_viewer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => SearchProvider())
      ],
      child: const InteractiveViewerWidget(),
      ),
    );
  }
}
