import 'dart:convert';

import 'package:flutter_widget/widgets/18_search_data/search_data_model.dart';
import 'package:http/http.dart' as http;

class SearchNetworkRequester {
  Future<List<SearchDataModel>>searchData(String url) async {
    try{
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        List<SearchDataModel> data=searchDataModelFromJson(response.body);
        print(jsonEncode(data));
        return data;
      }else {

        print("No data found ${response.statusCode}");
        throw Exception("unable to api callffff");
      }


    }catch(error){
      print(error.toString());
      throw Exception("unable to api call");

    }

  }


}
