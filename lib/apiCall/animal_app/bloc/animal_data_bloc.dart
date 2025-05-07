import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget/apiCall/animal_app/bloc/animal_data_event.dart';
import 'package:flutter_widget/apiCall/animal_app/bloc/animal_data_state.dart';
import 'package:flutter_widget/apiCall/model/animal_list.dart';
import 'package:flutter_widget/apiCall/model/animal_response.dart';

import '../../network_requester/network_requester.dart';

class AnimalDataBloc extends Bloc<AnimalDataEvent, AnimalDataState> {
  final NetworkRequester networkRequester;

  AnimalDataBloc({required this.networkRequester}) : super(AnimalDataState()) {
    on<FetchAnimalDataEvent>(_fetchAnimalInfo);
    on<AnimalListEvent>(_fetchAnimalList);
  }

  Future<void> _fetchAnimalInfo(
      FetchAnimalDataEvent event, Emitter<AnimalDataState> emit) async {
    emit(state.copyWith(status: ApiCAllStatus.loading));

    await networkRequester
        .getRequest(
            "https://api.api-ninjas.com/v1/animals?name=${event.animalName}",
            "oV/w2XjPR8UO4gfF0MI+xQ==14Z3QRk1DaBUs5f9")
        .then(
      (value) {
        final data = List<AnimalResponse>.from(
            jsonDecode(value.body).map((x) => AnimalResponse.fromJson(x)));
        emit(state.copyWith(
            message: "Api call successfull",
            status: ApiCAllStatus.success,
            animalResponse: data));
      },
    ).onError(
      (error, stackTrace) {
        print("error  $error");
        print("line no $stackTrace");
        emit(state.copyWith(
            status: ApiCAllStatus.error, message: error.toString()));
      },
    );
  }

  Future<void> _fetchAnimalList(
      AnimalListEvent event, Emitter<AnimalDataState> emit) async {
    emit(state.copyWith(status: ApiCAllStatus.loading));
    await networkRequester
        .getRequest(
            "https://raw.githubusercontent.com/AbuRasel9/db_file/refs/heads/main/animal_list",
            "")
        .then(
      (value) {
        /*final data = List<AnimalListModel>.from(
          jsonDecode(value.body).map((x) => AnimalListModel.fromJson(x)))*/
        final data = AnimalListModel.fromJson(jsonDecode(value.body));
        print("----------------------data${data.amphibians}");
        emit(state.copyWith(status: ApiCAllStatus.success, animalList: data));
      },
    ).onError(
      (error, stackTrace) {
        print("------------error $error and trace $stackTrace");
      },
    );
  }
}
