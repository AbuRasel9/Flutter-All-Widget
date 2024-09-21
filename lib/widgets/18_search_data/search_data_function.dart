import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/18_search_data/search_data_model.dart';
import 'package:flutter_widget/widgets/18_search_data/search_list_data_item.dart';

class SearchDataFunction extends SearchDelegate{
  SearchDataFunction({required this.posts});

  final List<SearchDataModel> posts;
  List<SearchDataModel> results = <SearchDataModel>[];

  @override
  List<Widget>? buildActions(BuildContext context) {

      IconButton(


          onPressed: () => query.isEmpty ? close(context, null) : query = '',
          icon: Icon(Icons.clear,color: Colors.red,));

  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
        icon: const Icon(Icons.arrow_back),
    onPressed: () {
    close(context, null);
    });
  }

  @override
  Widget buildResults(BuildContext context) {
    return results.isEmpty ?Center(
      child: Text("No Data Found"),
    ):SearchListDataItem(posts: results);

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    results=posts.where((SearchDataModel data){
      final String title=data.body?.toLowerCase() ?? "";
      final String input=query.toLowerCase();
      return title.contains(input);
    }).toList();
    return results.isEmpty?Center(
      child: Text("No Results Found"),
    ):SearchListDataItem(posts: results);

  }

}