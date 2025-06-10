import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget/animation/3_analog_clock.dart';
import 'package:flutter_widget/animation/5_confeti_animation_.dart';
import 'package:flutter_widget/apiCall/animal_app/bloc/animal_data_bloc.dart';
import 'package:flutter_widget/apiCall/network_requester/network_requester.dart';
import 'package:flutter_widget/practise.dart';
import 'package:flutter_widget/widgets/32_interactive_viewer.dart';
import 'package:flutter_widget/widgets/34_list_view.dart';
import 'package:flutter_widget/widgets/35_grid_view_builder.dart';

import 'animation/4_animatied_builder_widget.dart';
import 'animation/6_scale_transitaion_Widget.dart';
import 'apiCall/animal_details_screen.dart';
import 'apiCall/upload_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AnimalDataBloc(
              networkRequester: NetworkRequester(),
            ),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.blue,
                titleTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            brightness: Brightness.light,
            primaryColor: Colors.blue,
            useMaterial3: true,
            primarySwatch: Colors.blue,
          ),
          /*     home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => SearchProvider())
      ],
      child: const InteractiveViewerWidget(),
      ),*/
          home: GridViewBuilderWidget(),
        ));
  }
}
