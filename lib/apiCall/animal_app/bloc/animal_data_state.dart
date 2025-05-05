import 'package:equatable/equatable.dart';

import '../../model/animal_response.dart';

enum ApiCAllStatus { loading, inprogress, success, error }

class AnimalDataState extends Equatable {
  final String message;
  final AnimalResponse animalResponse;
  final ApiCAllStatus apiCAllStatus;

  AnimalDataState({
    this.message = "",
    this.apiCAllStatus = ApiCAllStatus.inprogress,
    AnimalResponse? animalResponse,
  }) : animalResponse = animalResponse ?? AnimalResponse();
AnimalDataState copyWith({
    String? message,AnimalResponse?animalResponse,ApiCAllStatus? status
}){
  return AnimalDataState(
    message: message ?? this.message,
    apiCAllStatus:  status ?? this.apiCAllStatus,
    animalResponse: animalResponse ?? this.animalResponse
  );
}
  @override
  List<Object?> get props => [message,apiCAllStatus,animalResponse];
}
