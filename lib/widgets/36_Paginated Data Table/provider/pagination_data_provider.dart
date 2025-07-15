import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

import '../model/person_data_model.dart';

class PaginationDataProvider extends ChangeNotifier {
  //variable
  bool _isLoading = false;

  List<PersonDataModel>? _personInfoData;

  //get variable
  bool get isLoading => _isLoading;

  List<PersonDataModel>? get personInfoData => _personInfoData;

  //set loading
  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  //api call
  Future<void> getPaginatedData() async {
    try {
      Response response = await get(Uri.parse(
          "https://raw.githubusercontent.com/AbuRasel9/db_file/refs/heads/main/personInformation"));
      if (response.statusCode == 200) {
        List<dynamic> jsonList = jsonDecode(response.body);
        _personInfoData =
            jsonList.map((e) => PersonDataModel.fromJson(e)).toList();
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      debugPrint("error----${e}");
    }
  }
}
