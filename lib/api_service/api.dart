import 'package:my_system/data/models/planet_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  final Dio _dio = Dio();

  final String baseUrl = 'http://api.phdl.uz/index.json';

  Future<List<PlanetModel>> fetchPlanets() async {
    try {
      Response response = await _dio.get(baseUrl);
      if (response.statusCode == 200) {
        List<dynamic> data = response.data as List<dynamic>;
        List<PlanetModel> planets =
            data.map((json) => PlanetModel.fromJson(json)).toList();
        return planets;
      } else {
        throw Exception("Failed to load planets");
      }
    } catch (error, stacktrace) {
      debugPrint("Exception occurred: $error stackTrace: $stacktrace");
      throw Exception("Failed to load planets");
    }
  }

}








