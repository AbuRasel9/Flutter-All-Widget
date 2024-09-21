// To parse this JSON data, do
//
//     final searchDataModel = searchDataModelFromJson(jsonString);

import 'dart:convert';

List<SearchDataModel> searchDataModelFromJson(String str) => List<SearchDataModel>.from(json.decode(str).map((x) => SearchDataModel.fromJson(x)));

String searchDataModelToJson(List<SearchDataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class
SearchDataModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  SearchDataModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory SearchDataModel.fromJson(Map<String, dynamic> json) => SearchDataModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
