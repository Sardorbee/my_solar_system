import 'dart:async';

import 'package:cosmos_data/api_service/api.dart';
import 'package:cosmos_data/data/models/planet_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'planetbloc_event.dart';
part 'planetbloc_state.dart';

class PlanetBloc extends Bloc<PlanetBlocEvent, PlanetBlocState> {
  PlanetBloc() : super(PlanetBlocState(planets: [], status: "Pure")) {
    on<GetPlanets>(fetchPlanets);
    add(GetPlanets());
  }
  ApiService service = ApiService();

  Future<void> fetchPlanets(
      GetPlanets event, Emitter<PlanetBlocState> emit) async {
    emit(state.copyWith(status: "Loading"));
    List<PlanetModel> planets = await service.fetchPlanets();
    emit(state.copyWith(status: "Success", planets: planets));
  }
}
