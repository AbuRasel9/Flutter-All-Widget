import 'package:equatable/equatable.dart';

import '../../model/animal_response.dart';

enum ApiCAllStatus { loading, inprogress, success, error }

class AnimalDataState extends Equatable {
  final String message;
  final List<AnimalResponse> animalResponse;
  final ApiCAllStatus apiCAllStatus;

  const AnimalDataState({
    this.message = "",
    this.apiCAllStatus = ApiCAllStatus.inprogress,
    this.  animalResponse=const [],
  });
AnimalDataState copyWith({
    String? message, List<AnimalResponse>?animalResponse,ApiCAllStatus? status
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
