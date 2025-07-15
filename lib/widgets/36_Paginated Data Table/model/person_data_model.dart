import 'dart:convert';

class PersonDataModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? address;

  PersonDataModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.address,
  });

  factory PersonDataModel.fromRawJson(String str) => PersonDataModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PersonDataModel.fromJson(Map<String, dynamic> json) => PersonDataModel(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    address: json["address"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "phone": phone,
    "address": address,
  };
}
