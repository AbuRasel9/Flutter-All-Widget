import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget/animation/3_analog_clock.dart';
import 'package:flutter_widget/animation/5_confeti_animation_.dart';
import 'package:flutter_widget/apiCall/animal_app/bloc/animal_data_bloc.dart';
import 'package:flutter_widget/apiCall/network_requester/network_requester.dart';
import 'package:flutter_widget/practise.dart';
import 'package:flutter_widget/widgets/32_interactive_viewer.dart';
import 'package:flutter_widget/widgets/35_nested_drop_down_form_feild.dart';
import 'package:flutter_widget/widgets/36_Paginated%20Data%20Table/paginated_data_table_screen.dart';
import 'package:flutter_widget/widgets/36_Paginated%20Data%20Table/provider/pagination_data_provider.dart';
import 'package:flutter_widget/widgets/38_data_table_widget.dart';
import 'package:flutter_widget/widgets/39_dismissible_widget.dart';
import 'package:flutter_widget/widgets/40_drawer_widget.dart';
import 'package:flutter_widget/widgets/expansion_panel_widget.dart';
import 'package:provider/provider.dart';

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
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => PaginationDataProvider(),
          )
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: DrawerWidget(),
        ),
      ),
    );
  }
}
