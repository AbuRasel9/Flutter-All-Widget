// To parse this JSON data, do
//
//     final animalList = animalListFromJson(jsonString);

import 'dart:convert';

AnimalListModel animalListFromJson(String str) => AnimalListModel.fromJson(json.decode(str));

String animalListToJson(AnimalListModel data) => json.encode(data.toJson());

class AnimalListModel {
  List<String>? mammals;
  List<String>? birds;
  List<String>? reptiles;
  List<String>? amphibians;
  List<String>? fish;
  List<String>? insectsAndArthropods;
  List<String>? others;

  AnimalListModel({
    this.mammals,
    this.birds,
    this.reptiles,
    this.amphibians,
    this.fish,
    this.insectsAndArthropods,
    this.others,
  });

  AnimalListModel copyWith({
    List<String>? mammals,
    List<String>? birds,
    List<String>? reptiles,
    List<String>? amphibians,
    List<String>? fish,
    List<String>? insectsAndArthropods,
    List<String>? others,
  }) =>
      AnimalListModel(
        mammals: mammals ?? this.mammals,
        birds: birds ?? this.birds,
        reptiles: reptiles ?? this.reptiles,
        amphibians: amphibians ?? this.amphibians,
        fish: fish ?? this.fish,
        insectsAndArthropods: insectsAndArthropods ?? this.insectsAndArthropods,
        others: others ?? this.others,
      );

  factory AnimalListModel.fromJson(Map<String, dynamic> json) => AnimalListModel(
    mammals: json["Mammals"] == null ? [] : List<String>.from(json["Mammals"]!.map((x) => x)),
    birds: json["Birds"] == null ? [] : List<String>.from(json["Birds"]!.map((x) => x)),
    reptiles: json["Reptiles"] == null ? [] : List<String>.from(json["Reptiles"]!.map((x) => x)),
    amphibians: json["Amphibians"] == null ? [] : List<String>.from(json["Amphibians"]!.map((x) => x)),
    fish: json["Fish"] == null ? [] : List<String>.from(json["Fish"]!.map((x) => x)),
    insectsAndArthropods: json["Insects_And_Arthropods"] == null ? [] : List<String>.from(json["Insects_And_Arthropods"]!.map((x) => x)),
    others: json["Others"] == null ? [] : List<String>.from(json["Others"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "Mammals": mammals == null ? [] : List<dynamic>.from(mammals!.map((x) => x)),
    "Birds": birds == null ? [] : List<dynamic>.from(birds!.map((x) => x)),
    "Reptiles": reptiles == null ? [] : List<dynamic>.from(reptiles!.map((x) => x)),
    "Amphibians": amphibians == null ? [] : List<dynamic>.from(amphibians!.map((x) => x)),
    "Fish": fish == null ? [] : List<dynamic>.from(fish!.map((x) => x)),
    "Insects_And_Arthropods": insectsAndArthropods == null ? [] : List<dynamic>.from(insectsAndArthropods!.map((x) => x)),
    "Others": others == null ? [] : List<dynamic>.from(others!.map((x) => x)),
  };
}
