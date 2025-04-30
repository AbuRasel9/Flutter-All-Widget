class AnimalResponse {
  String? name;
  Taxonomy? taxonomy;
  List<String>? locations;
  Characteristics? characteristics;

  AnimalResponse({
    this.name,
    this.taxonomy,
    this.locations,
    this.characteristics,
  });

  AnimalResponse copyWith({
    String? name,
    Taxonomy? taxonomy,
    List<String>? locations,
    Characteristics? characteristics,
  }) =>
      AnimalResponse(
        name: name ?? this.name,
        taxonomy: taxonomy ?? this.taxonomy,
        locations: locations ?? this.locations,
        characteristics: characteristics ?? this.characteristics,
      );
}

class Characteristics {
  String? prey;
  String? nameOfYoung;
  String? groupBehavior;
  String? estimatedPopulationSize;
  String? biggestThreat;
  String? mostDistinctiveFeature;
  String? gestationPeriod;
  String? habitat;
  String? diet;
  String? averageLitterSize;
  String? lifestyle;
  String? commonName;
  String? numberOfSpecies;
  String? location;
  String? slogan;
  String? group;
  String? color;
  String? skinType;
  String? topSpeed;
  String? lifespan;
  String? weight;
  String? height;
  String? ageOfSexualMaturity;
  String? ageOfWeaning;

  Characteristics({
    this.prey,
    this.nameOfYoung,
    this.groupBehavior,
    this.estimatedPopulationSize,
    this.biggestThreat,
    this.mostDistinctiveFeature,
    this.gestationPeriod,
    this.habitat,
    this.diet,
    this.averageLitterSize,
    this.lifestyle,
    this.commonName,
    this.numberOfSpecies,
    this.location,
    this.slogan,
    this.group,
    this.color,
    this.skinType,
    this.topSpeed,
    this.lifespan,
    this.weight,
    this.height,
    this.ageOfSexualMaturity,
    this.ageOfWeaning,
  });

  Characteristics copyWith({
    String? prey,
    String? nameOfYoung,
    String? groupBehavior,
    String? estimatedPopulationSize,
    String? biggestThreat,
    String? mostDistinctiveFeature,
    String? gestationPeriod,
    String? habitat,
    String? diet,
    String? averageLitterSize,
    String? lifestyle,
    String? commonName,
    String? numberOfSpecies,
    String? location,
    String? slogan,
    String? group,
    String? color,
    String? skinType,
    String? topSpeed,
    String? lifespan,
    String? weight,
    String? height,
    String? ageOfSexualMaturity,
    String? ageOfWeaning,
  }) =>
      Characteristics(
        prey: prey ?? this.prey,
        nameOfYoung: nameOfYoung ?? this.nameOfYoung,
        groupBehavior: groupBehavior ?? this.groupBehavior,
        estimatedPopulationSize: estimatedPopulationSize ?? this.estimatedPopulationSize,
        biggestThreat: biggestThreat ?? this.biggestThreat,
        mostDistinctiveFeature: mostDistinctiveFeature ?? this.mostDistinctiveFeature,
        gestationPeriod: gestationPeriod ?? this.gestationPeriod,
        habitat: habitat ?? this.habitat,
        diet: diet ?? this.diet,
        averageLitterSize: averageLitterSize ?? this.averageLitterSize,
        lifestyle: lifestyle ?? this.lifestyle,
        commonName: commonName ?? this.commonName,
        numberOfSpecies: numberOfSpecies ?? this.numberOfSpecies,
        location: location ?? this.location,
        slogan: slogan ?? this.slogan,
        group: group ?? this.group,
        color: color ?? this.color,
        skinType: skinType ?? this.skinType,
        topSpeed: topSpeed ?? this.topSpeed,
        lifespan: lifespan ?? this.lifespan,
        weight: weight ?? this.weight,
        height: height ?? this.height,
        ageOfSexualMaturity: ageOfSexualMaturity ?? this.ageOfSexualMaturity,
        ageOfWeaning: ageOfWeaning ?? this.ageOfWeaning,
      );
}

class Taxonomy {
  String? kingdom;
  String? phylum;
  String? taxonomyClass;
  String? order;
  String? family;
  String? genus;
  String? scientificName;

  Taxonomy({
    this.kingdom,
    this.phylum,
    this.taxonomyClass,
    this.order,
    this.family,
    this.genus,
    this.scientificName,
  });

  Taxonomy copyWith({
    String? kingdom,
    String? phylum,
    String? taxonomyClass,
    String? order,
    String? family,
    String? genus,
    String? scientificName,
  }) =>
      Taxonomy(
        kingdom: kingdom ?? this.kingdom,
        phylum: phylum ?? this.phylum,
        taxonomyClass: taxonomyClass ?? this.taxonomyClass,
        order: order ?? this.order,
        family: family ?? this.family,
        genus: genus ?? this.genus,
        scientificName: scientificName ?? this.scientificName,
      );
}
