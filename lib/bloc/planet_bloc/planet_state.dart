part of 'planet_bloc.dart';

class PlanetBlocState {
  List<PlanetModel> planets;
  String status;

  PlanetBlocState({
    required this.planets,
    required this.status,
  });

  PlanetBlocState copyWith({
    List<PlanetModel>? planets,
    String? status,
  }) {
    return PlanetBlocState(
      planets: planets ?? this.planets,
      status: status ?? this.status,
    );
  }
}
