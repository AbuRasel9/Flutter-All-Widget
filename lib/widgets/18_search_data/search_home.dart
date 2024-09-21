import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/18_search_data/search_data_function.dart';
import 'package:flutter_widget/widgets/18_search_data/search_list_data_item.dart';
import 'package:flutter_widget/widgets/18_search_data/search_network_requester.dart';
import 'package:flutter_widget/widgets/18_search_data/search_provider.dart';
import 'package:provider/provider.dart';

class SearchHome extends StatefulWidget {
  const SearchHome({super.key});

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  getData() async {
    final provider=context.read<SearchProvider>();
    await provider.searchDataFun();
    print("----------------${jsonEncode(provider.searchData)}");
  }

  @override
  void initState() {
    getData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<SearchProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Search Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => showSearch(
              context: context,
              delegate: SearchDataFunction(posts: provider.searchData),
            ),
          ),
        ],
      ),
      body:SearchListDataItem(posts:provider.searchData ,),
    );
  }
}
