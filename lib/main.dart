import 'package:flutter/material.dart';
import 'package:flutter_widget/animation/confeti_animation_.dart';
import 'package:flutter_widget/practise.dart';

import 'apiCall/upload_image.dart';

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
 /*     home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => SearchProvider())
      ],
      child: const InteractiveViewerWidget(),
      ),*/
      home: UploadImageScreen(),
    );
  }
}
