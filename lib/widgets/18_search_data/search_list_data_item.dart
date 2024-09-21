import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/18_search_data/search_data_model.dart';
import 'package:flutter_widget/widgets/18_search_data/search_provider.dart';
import 'package:provider/provider.dart';

class SearchListDataItem extends StatefulWidget {
  final List<SearchDataModel>posts;
  const SearchListDataItem({super.key, required this.posts});

  @override
  State<SearchListDataItem> createState() => _SearchListDataItemState();
}

class _SearchListDataItemState extends State<SearchListDataItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget?.posts.length ?? 0,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(widget.posts[index].body ?? ""),
          );
        });
  }
}
