class PlanetModel {
  String name;
  double mass;
  double radius;
  double period;
  double semiMajorAxis;
  int temperature;
  double distanceLightYear;
  int hostStarMass;
  int hostStarTemperature;
  String description;
  String image;

  PlanetModel({
    required this.name,
    required this.mass,
    required this.radius,
    required this.period,
    required this.semiMajorAxis,
    required this.temperature,
    required this.distanceLightYear,
    required this.hostStarMass,
    required this.hostStarTemperature,
    required this.description,
    required this.image,
  });

  factory PlanetModel.fromJson(Map<String, dynamic> json) => PlanetModel(
        name: json["name"],
        mass: json["mass"]?.toDouble(),
        radius: json["radius"]?.toDouble(),
        period: json["period"]?.toDouble(),
        semiMajorAxis: json["semi_major_axis"]?.toDouble(),
        temperature: json["temperature"],
        distanceLightYear: json["distance_light_year"]?.toDouble(),
        hostStarMass: json["host_star_mass"],
        hostStarTemperature: json["host_star_temperature"],
        description: json["description"],
        image: json["image"],
      );
}
