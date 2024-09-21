import 'package:flutter/cupertino.dart';
import 'package:flutter_widget/widgets/18_search_data/search_data_model.dart';
import 'package:flutter_widget/widgets/18_search_data/search_network_requester.dart';

class SearchProvider with ChangeNotifier{
  List<SearchDataModel> _searchData=[];
  List<SearchDataModel> get searchData=>_searchData;
  Future<void>searchDataFun() async {
    _searchData=await SearchNetworkRequester().searchData("https://jsonplaceholder.typicode.com/posts");

    notifyListeners();
  }
  

}