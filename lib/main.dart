import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/12_popup_menu_button_widget.dart';
import 'package:flutter_widget/widgets/13_page_view_widget.dart';
import 'package:flutter_widget/widgets/14_bottom_navigation_bar.dart';
import 'package:flutter_widget/widgets/15_stepper_widget.dart';
import 'package:flutter_widget/widgets/16_modal_bottom_sheet_widget.dart';
import 'package:flutter_widget/widgets/17_animated_cross_fade.dart';
import 'package:flutter_widget/widgets/18_search_data/search_home.dart';
import 'package:flutter_widget/widgets/18_search_data/search_provider.dart';
import 'package:flutter_widget/widgets/19_simple_dialog_widget_part_2.dart';
import 'package:flutter_widget/widgets/20_expanded_widget.dart';
import 'package:flutter_widget/widgets/21_will_pop_scope_widget.dart';
import 'package:flutter_widget/widgets/22_date_picker_widget.dart';
import 'package:flutter_widget/widgets/23_future_builder_widget.dart';
import 'package:flutter_widget/widgets/24_grid_tile_widget.dart';
import 'package:flutter_widget/widgets/25_grid_tile_bar_widget.dart';
import 'package:flutter_widget/widgets/26_grid_paper.dart';
import 'package:flutter_widget/widgets/27_tooltip_widget.dart';
import 'package:flutter_widget/widgets/3_simple_dialog_widget.dart';
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
      child: const ToolTipWidget(),
      ),
    );
  }
}
